local test_step(emacs_ver) = {
  name: 'test-emacs%s' % emacs_ver,
  image: 'silex/emacs:%s-ci-cask' % emacs_ver,
  commands: [
    'PATH=/opt/guix/bin:$PATH',
    'cask install',
    'sleep 15',
    // Waiting for httpbin
    'cask exec ert-runner',
  ],
  volumes: [
    {
      name: 'guix',
      path: '/opt/guix',
    },
  ],
  environment: {
    MB_URL_TEST__HTTPBIN_PREFIX: 'http://httpbin',
  },
  depends_on: [
    'install ci deps',
  ],
};

local generate_pipeline(args) = {
  kind: 'pipeline',
  name: args.pipeline_name,
  services: [
    {
      name: 'httpbin',
      image: 'kennethreitz/httpbin',
    },
  ],
  steps: [
    {
      name: 'install ci deps',
      image: 'metacall/guix:latest',
      privileged: true,
      commands: [
        'guix pull',
        'guix upgrade',
        'guix pack --format=tarball --relocatable --relocatable --symlink=/bin=bin --root=/opt/guix-pack.tar.gz --manifest=manifest.scm',
        'tar x -z -f /opt/guix-pack.tar.gz -C /opt/guix',
      ],
      volumes: [
        {
          name: 'guix',
          path: '/opt/guix',
        },
      ],
    },
  ] + std.map(test_step, args.emacs_vers),
  volumes: [
    {
      name: 'guix',
      temp: {},
    },
  ],
};

std.map(generate_pipeline, [
  {
    pipeline_name: 'default',
    emacs_vers: ['24.5', '25.1', '25.2', '25.3', '26.1', '26.2', '26.3'],
  },
  {
    // According to [1] and [2], Emacs 24.4 cannot be built on Ubuntu 18.04, so
    // `silex/emacs:24.4` use Ubuntu 12.04 as its base image.  We have to
    // install dependencies on Ubuntu 12.04.
    //
    // [1]: https://github.com/Silex/docker-emacs/issues/34
    // [2]: https://github.com/Silex/docker-emacs/commit/df66168dc4edc5a746351685b88ac59d3efcb183
    pipeline_name: 'test for emacs 24.4',
    emacs_vers: ['24.4'],
  },
])
