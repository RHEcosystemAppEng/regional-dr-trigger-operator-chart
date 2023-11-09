# Contributing guidelines

## Contributions

All contributions to the repository must be submitted under the terms of the
[Apache Public License 2.0](https://www.apache.org/licenses/LICENSE-2.0).

## Certificate of Origin

By contributing to this project you agree to the Developer Certificate of
Origin (DCO). This document was created by the Linux Kernel community and is a
simple statement that you, as a contributor, have the legal right to make the
contribution. See the [DCO](../DCO) file for details.

## Contributing A Patch

1. Submit an issue describing your proposed change to the repo in question.
2. The repo owners will respond to your issue promptly.
3. Fork the repo, develop and test your code changes.
4. Submit a pull request.
5. Make sure the PR title adhere to the [Conventional Commits Specifications](https://www.conventionalcommits.org/).
6. Keep each PR addressing only one concern.
7. If needed, coordinate the PR with the [Addon][addon] project.

## Pre-check before submitting a PR

After your PR is ready to commit, please run following commands to check your code.

```shell
make lint
make test
```

<!--LINKS-->
[addon]: https://github.com/RHEcosystemAppEng/multicluster-resiliency-addon
