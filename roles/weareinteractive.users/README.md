# Ansible weareinteractive.users role

[![Build Status](https://img.shields.io/travis/weareinteractive/ansible-users.svg)](https://travis-ci.org/weareinteractive/ansible-users)
[![Galaxy](http://img.shields.io/badge/galaxy-weareinteractive.users-blue.svg)](https://galaxy.ansible.com/weareinteractive/users)
[![GitHub tag](https://img.shields.io/github/tag/weareinteractive/ansible-users.svg)](https://github.com/weareinteractive/ansible-users/releases)
[![GitHub stars](https://img.shields.io/github/stars/weareinteractive/ansible-users.svg?style=social&label=Star)](https://github.com/weareinteractive/ansible-users)

> `weareinteractive.users` is an [Ansible](http://www.ansible.com) role which:
>
> * manges users
> * manages user's private key
> * manages user's authorized keys

**Note:**

> Since Ansible Galaxy switched all role names to the organization name, this role has moved from `franklinkim.users` to `weareinteractive.users`!

## Installation

Using `ansible-galaxy`:

```shell
$ ansible-galaxy install weareinteractive.users
```

Using `requirements.yml`:

```yaml
- src: weareinteractive.users
```

Using `git`:

```shell
$ git clone https://github.com/weareinteractive/ansible-users.git weareinteractive.users
```

## Dependencies

* Ansible >= 2.4

## Variables

Here is a list of all the default variables for this role, which are also available in `defaults/main.yml`.

```yaml
---
# This role takes advantage of Ansible's user role.
# All user related properties will fall back to Ansible's default values.
# @see http://docs.ansible.com/ansible/user_module.html
#
# users:
#   - username: foobar              (required)
#     name: Foo Bar
#     uid: 1000
#     group: staff
#     password: xxxxx               (a hash created with: mkpasswd)
#     groups: ["adm", "www-data"]
#     append: no                    (only append groups, leave others)
#     home_mode: "0750"
#     home_create: yes
#     home: /path/to/user/home
#     home_files:
#       - "/path/to/user/home/.bashrc"
#       - "/path/to/user/home/.bash_profile"
#     system: no
#     authorized_keys:
#       - "xxx"
#       - "{{ lookup('file', '/path/to/id_rsa.pub') }}"
#     authorized_keys_exclusive: yes
#     ssh_key_type: rsa
#     ssh_key_bits: 2048
#     ssh_key_password: ""
#     ssh_key_generate: no
#     ssh_key: "xxx" or "{{ lookup('file', '/path/to/id_rsa') }}"
#     ssh_keys:
#       id_rsa_1: "xxx" or "{{ lookup('file', '/path/to/id_rsa') }}"
#       id_rsa_2: "xxx" or "{{ lookup('file', '/path/to/id_rsa') }}"
#     shell: /bin/bash
#     update_password: always
#
# users_remove:
#   - foobar
#   - { username: foobar, remove: no }

# list of users to add
users: []
# default user's dotfiles
users_home_files: []
# users home directory
users_home: /home
# create user's home directory
users_home_create: yes
# default user's primary group for users
users_group:
# default user's secondary groups
users_groups: []
# default user's home directory permissions
users_home_mode: "0755"
# default user login shell
#users_shell:
# default user's ssh key type
users_ssh_key_type: rsa
# default user's ssh key bits
users_ssh_key_bits: 2048
# default user's setting for authorized keys exclusive
users_authorized_keys_exclusive: no
# list of users to be removed
users_remove: []

```


## Usage

This is an example playbook:

```yaml
---

- hosts: all
  become: yes
  roles:
    - weareinteractive.users
  vars:
    users:
      - username: root
      - username: foobar
        name: Foo Bar 1
      - username: foobar_authorized_keys
        authorized_keys:
          - "{{ lookup('file', 'tests/id_rsa.pub') }}"
        home_create: yes
      - username: foobar_nohome
        home_create: no
      - username: foobar_groups
        groups:
          - users
        append: yes
      - username: foobar_groups_reset
        groups: []
        group: foobar_groups_reset
      - username: foobar_home_mode
        home_mode: "0750"
      - username: foobar_key
        ssh_key: "{{ lookup('file', 'tests/id_rsa') }}"
      - username: foobar_keys
        ssh_keys:
          id_rsa_1: "{{ lookup('file', 'tests/id_rsa') }}"
          id_rsa_2: "{{ lookup('file', 'tests/id_rsa') }}"
      - username: foobar_key_generate
        ssh_key_generate: yes
        ssh_key_password: secret
      - username: foobar_system
        system: yes
      - username: foobar_file
        home_files:
          - "tests/.bashrc"
    users_group: staff
    users_groups:
      - www-data
    users_authorized_keys_exclusive: yes
    users_remove:
    - foobar
    - { username: foobar_key, remove: no }
    - { username: foobar_authorized_keys, remove: yes }


```


## Testing

```shell
$ git clone https://github.com/weareinteractive/ansible-users.git
$ cd ansible-users
$ make test
```

## Contributing
In lieu of a formal style guide, take care to maintain the existing coding style. Add unit tests and examples for any new or changed functionality.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

*Note: To update the `README.md` file please install and run `ansible-role`:*

```shell
$ gem install ansible-role
$ ansible-role docgen
```

## License
Copyright (c) We Are Interactive under the MIT license.
