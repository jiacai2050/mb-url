# Change Log #

## [Unreleased] ##

## [0.6.1] - 2021-09-17 ##

### Fixed ###

- HTTP response body processing in sentinel

## [0.6.0] - 2021-09-16 ##

### Added ###

- Lint project by Mega-Linter
- Test case for Emacs 27
- GitHub Actions workflow
- GitHub Actions badge

### Changed ###

- Replace Cask with Eldev

### Removed ###

- Drop test cases for non-latest images of each major version
- Drop Linuxbrew use in CI

## [0.5.1] - 2019-10-06 ##

### Added ###

- Add badges

## [0.5.0] - 2019-09-21 ##

### Changed ###

- Replace test helpers with environment variable
- Migrate from Travis to Drone
- Test for Emacs 26

## [0.4.0] - 2018-12-25 ##

### Added ###

- `mb-url-http-curl-switches`
- `mb-url-http-httpie-switches`
- Add badges

### Changed ###

- Use ert-runner to test
- Fallback to `url-http` only if `mb-url-http-backend` is nil
- Add more test cases
- Rename variables to follow Emacs conventions

### Deprecated ###

- Not recommended since Emacs 26

## [0.3.1] - 2018-10-11 ##

### Changed ###

- Support set empty headers
- Support unset headers

## [0.3.0] - 2018-09-27 ##

### Changed ###

- Completely rewrite for url-http backends
- New test code

## [0.2.1] - 2018-09-07 ##

### Changed ###

- Make ERT easy to debug

## [0.2.0] - 2018-09-01 ##

### Fixed ###

- Do not post data for curl even if the data is an empty string

## [0.1.0] - 2016-12-25 ##

### Added ###

- Test for Emacs 25.1

### Changed ###

- Naming convention
- Rewrite test code

### Fixed ###

- Fix for Emacs 25

## [0.0.9] - 2016-07-24 ##

### Added ###

- Add code of conduct

## [0.0.8] - 2016-07-01 ##

### Added ###

- Test on travis-ci

## [0.0.7] - 2016-06-02 ##

### Added ###

- Add bumplus config

## [0.0.6] - 2016-05-08 ##

### Fixed ###

- Fix version number.

## [0.0.5] - 2016-04-14 ##

### Changed ###

- Fix typo in the change log.

## [0.0.4] - 2016-04-14 ##

### Changed ###

- Fix typo in the change log.

### Added ###

- Add links to MELPA & el-get.

## [0.0.3] - 2015-12-10 ##

### Changed ###

- Improve the change log format.

### Added ###

- Add tag comparison links in the change log.
- Add install instruction

## [0.0.2] - 2015-12-06 ##

### Fixed ###

- Fix typo

## [0.0.1] - 2015-12-03 ##

### Added ###

- Initial release

<!-- markdown-link-check-disable -->

<!-- Skip checking the links status because the CHANGELOG is always updated
before the tag is created -->

[Unreleased]: https://github.com/dochang/mb-url/compare/0.6.1...HEAD
[0.6.1]: https://github.com/dochang/mb-url/compare/0.6.0...0.6.1
[0.6.0]: https://github.com/dochang/mb-url/compare/0.5.1...0.6.0
[0.5.1]: https://github.com/dochang/mb-url/compare/0.5.0...0.5.1
[0.5.0]: https://github.com/dochang/mb-url/compare/0.4.0...0.5.0
[0.4.0]: https://github.com/dochang/mb-url/compare/0.3.1...0.4.0
[0.3.1]: https://github.com/dochang/mb-url/compare/0.3.0...0.3.1
[0.3.0]: https://github.com/dochang/mb-url/compare/0.2.1...0.3.0
[0.2.1]: https://github.com/dochang/mb-url/compare/0.2.0...0.2.1
[0.2.0]: https://github.com/dochang/mb-url/compare/0.1.0...0.2.0
[0.1.0]: https://github.com/dochang/mb-url/compare/0.0.9...0.1.0
[0.0.9]: https://github.com/dochang/mb-url/compare/0.0.8...0.0.9
[0.0.8]: https://github.com/dochang/mb-url/compare/0.0.7...0.0.8
[0.0.7]: https://github.com/dochang/mb-url/compare/0.0.6...0.0.7
[0.0.6]: https://github.com/dochang/mb-url/compare/0.0.5...0.0.6
[0.0.5]: https://github.com/dochang/mb-url/compare/0.0.4...0.0.5
[0.0.4]: https://github.com/dochang/mb-url/compare/0.0.3...0.0.4
[0.0.3]: https://github.com/dochang/mb-url/compare/0.0.2...0.0.3
[0.0.2]: https://github.com/dochang/mb-url/compare/0.0.1...0.0.2
[0.0.1]: https://github.com/dochang/mb-url/commits/0.0.1

<!-- markdown-link-check-enable -->

<!-- markdownlint-configure-file
{
  "MD024": {
    "siblings_only": true
  }
}
-->
