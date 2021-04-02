<a name="1.16.0"></a>
## 1.16.0 (2020-06-21)


#### Features

*   ignore root user ([55d3c48f](https://github.com/weareinteractive/ansible-users/commit/55d3c48fd011eb37c51492714ff3bb4d6a232c4a))



<a name="1.15.0"></a>
## 1.15.0 (2020-04-04)


#### Features

*   allow to keep user directories on delete ([cd363ce7](https://github.com/weareinteractive/ansible-users/commit/cd363ce78d13cf8e641b1fa743f88da627935239))



<a name="1.14.1"></a>
### 1.14.1 (2020-03-17)


#### Features

*   set no_log on private key ([b31ba4c7](https://github.com/weareinteractive/ansible-users/commit/b31ba4c7e4dce1b3a0250fa70d0d7f8257403b6e))



<a name="1.14.0"></a>
## 1.14.0 (2020-02-04)


#### Features

*   add `ssh_keys` option for mutiple keys


<a name="1.13.1"></a>
### 1.13.1 (2019-10-17)


#### Features

*   test and document centos7 support ([bda06a8c](https://github.com/weareinteractive/ansible-users/commit/bda06a8cf77f198bf659b1c795a4e5a759a04b5e))



<a name="1.13.0"></a>
## 1.13.0 (2019-07-10)


#### Features

*   add default values ([b5bc7116](https://github.com/weareinteractive/ansible-users/commit/b5bc7116ab64e9e01c972a8bf944e0d4def837c3))



<a name="1.12.0"></a>
## 1.12.0 (2019-06-17)


#### Bug Fixes

*   fix directory not found in check mode ([57d10aa7](https://github.com/weareinteractive/ansible-users/commit/57d10aa765331429f91e3e1c6210f15ff5f0a1dc))



<a name="1.11.2"></a>
### 1.11.2 (2019-03-16)


#### Bug Fixes

*   remove comment in private key file ([24ca28a7](https://github.com/weareinteractive/ansible-users/commit/24ca28a79b69d138e136d302452aa1a4a9a88d34))



<a name="1.11.1"></a>
### 1.11.1 (2019-02-10)




<a name="1.11.0"></a>
## 1.11.0 (2018-12-11)


#### Features

*   adopt galaxy role name ([55a97e7d](https://github.com/weareinteractive/ansible-users/commit/55a97e7da4444af230a1621e7cd68ed80ec41a3a))



<a name="1.10.0"></a>
## 1.10.0 (2018-09-13)


#### Features

*   add home_files to user ([43d50f22](https://github.com/weareinteractive/ansible-users/commit/43d50f2265958889b1f73dd4fd8da3fbaeb42d1b))

#### Bug Fixes

*   add skip for missing attributes ([11db5434](https://github.com/weareinteractive/ansible-users/commit/11db5434588e868b76d16404b242d2731333b966))



<a name="1.9.3"></a>
### 1.9.3 (2018-05-13)




<a name="1.9.2"></a>
### 1.9.2 (2018-01-25)


#### Features

*   change gitignore rules ([6e50c90e](https://github.com/weareinteractive/ansible-users/commit/6e50c90e2d7a43392492bb0a9e662dd5f3da6188))
*   add makefile format ([5c51d0fe](https://github.com/weareinteractive/ansible-users/commit/5c51d0fe1d99240a95dbfa791da62de3e2c57ab6))



<a name="1.9.1"></a>
### 1.9.1 (2017-11-10)




<a name="1.8.0"></a>
## 1.8.0 (2017-06-21)


#### Features

*   bump ansible version to 2.0 ([b4c39b06](https://github.com/weareinteractive/ansible-users/commit/b4c39b0653ac425a34b5162af0309465cd7284c8))
*   add append flag to users ([c4bffe1b](https://github.com/weareinteractive/ansible-users/commit/c4bffe1b7cc44d557b2b88ac1925f19c92f85f6d))



<a name="1.7.1"></a>
### 1.7.1 (2017-02-14)


#### Features

*   add update_password flag ([d3511ffe](https://github.com/weareinteractive/ansible-users/commit/d3511ffee448b691965ad4b976a7b32e7dc8824d))



<a name="1.7.0"></a>
## 1.7.0 (2016-08-02)


#### Features

*   add `users_remove` ([d06f860d](https://github.com/weareinteractive/ansible-users/commit/d06f860d064da9115331224ec16fcfe5db91fa82))
*   optimize authorized keys management ([382d7c2e](https://github.com/weareinteractive/ansible-users/commit/382d7c2e9f7edc987c2f8b0679fc27cdfdc9c6b6))



<a name="1.6.1"></a>
### 1.6.1 (2016-05-30)




<a name="1.6.0"></a>
## 1.6.0 (2016-05-09)


#### Features

*   add password and shell variables ([93b48f0e](https://github.com/weareinteractive/ansible-users/commit/93b48f0eb0e9c547717a5679f9dbc14a18d32b17))



<a name="1.5.0"></a>
## 1.5.0 (2016-04-18)


#### Bug Fixes

*   fix 'when' clause when adding the primary user group ([9fec282d](https://github.com/weareinteractive/ansible-users/commit/9fec282d4635eeb808837c4ce9ddfed25ce7bffd))
*   fix deprecation warnings in ansible 2.0


<a name="1.4.0"></a>
## 1.4.0 (2016-04-14)


#### Features

*   make sure groups are available ([232fe41b](https://github.com/weareinteractive/ansible-users/commit/232fe41b47372177492789e7a9f1ee5bb851de2e))



<a name="1.3.0"></a>
## 1.3.0 (2015-12-11)


#### Breaking Changes

*   move config.yml tasks to manage.yml since it belongs in that context ([a1edf947](https://github.com/weareinteractive/ansible-users/commit/a1edf94719275b4f204105807ee32d21dd3319d2))

#### Features

*   adds galaxy_tags ([082d43cd](https://github.com/weareinteractive/ansible-users/commit/082d43cd4cadbfacb9e6c57e54dfdf3d17f31db8))
*   move config.yml tasks to manage.yml since it belongs in that context ([a1edf947](https://github.com/weareinteractive/ansible-users/commit/a1edf94719275b4f204105807ee32d21dd3319d2))
*   adds CHANGELOG ([3a39f74c](https://github.com/weareinteractive/ansible-users/commit/3a39f74cb6ba1bea4fda7483122bae889ac6251e))
*   using ansible-role docgen for README geneartion ([7c16c027](https://github.com/weareinteractive/ansible-users/commit/7c16c02716a65af4e90916bf88bf0083a5a902d1))
*   use `authorized_key` module instead of template ([a6d96f43](https://github.com/weareinteractive/ansible-users/commit/a6d96f4358e601c9c634b43629e8e9304f0e395e), closes [#5](https://github.com/weareinteractive/ansible-users/issues/5))
