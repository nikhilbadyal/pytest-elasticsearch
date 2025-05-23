CHANGELOG
=========

.. towncrier release notes start

0.0.3 (2025-04-20)
==================

No significant changes.


0.0.2 (2024-08-21)
==================

No significant changes.


0.0.1 (2024-08-21)
==================

No significant changes.


4.1.0 (2024-03-15)
==================

Features
--------

- Support python 3.12 (`#609 <https://github.com/ClearcodeHQ/pytest-elasticsearch/issues/609>`__)


Miscellaneus
------------

- `#582 <https://github.com/ClearcodeHQ/pytest-elasticsearch/issues/582>`__, `#585 <https://github.com/ClearcodeHQ/pytest-elasticsearch/issues/585>`__, `#610 <https://github.com/ClearcodeHQ/pytest-elasticsearch/issues/610>`__, `#611 <https://github.com/ClearcodeHQ/pytest-elasticsearch/issues/611>`__, `#612 <https://github.com/ClearcodeHQ/pytest-elasticsearch/issues/612>`__


4.0.2 (2023-09-13)
==================

Bugfixes
--------

- The current version of pytest-elasticsearch is trying to use pytest.Parser. 
  However, pytest.Parser is added only after pytest 7. We should update 
  dependencies to use only pytest 7+ (`#522 <https://github.com/ClearcodeHQ/pytest-elasticsearch/issues/522>`__)


4.0.1 (2023-08-03)
==================

Bugfixes
--------

- Fixed compatibility with elasticsearch client 7.x (`#512 <https://github.com/ClearcodeHQ/pytest-elasticsearch/issues/512>`__)


4.0.0 (2023-07-28)
==================

Breaking changes
----------------

- Drop support for elastisearch older than 7 (`#384 <https://github.com/ClearcodeHQ/pytest-elasticsearch/issues/384>`__)
- Dropped support for python 3.7 (`#474 <https://github.com/ClearcodeHQ/pytest-elasticsearch/issues/474>`__)


Features
--------

- Support elasticsearch up to 8.9 (`#384 <https://github.com/ClearcodeHQ/pytest-elasticsearch/issues/384>`__)
- Package is fully typed and mypy checked. (`#474 <https://github.com/ClearcodeHQ/pytest-elasticsearch/issues/474>`__)
- Support Python 3.11 (`#475 <https://github.com/ClearcodeHQ/pytest-elasticsearch/issues/475>`__)


Miscellaneus
------------

- `#384 <https://github.com/ClearcodeHQ/pytest-elasticsearch/issues/384>`__, `#469 <https://github.com/ClearcodeHQ/pytest-elasticsearch/issues/469>`__, `#470 <https://github.com/ClearcodeHQ/pytest-elasticsearch/issues/470>`__, `#471 <https://github.com/ClearcodeHQ/pytest-elasticsearch/issues/471>`__, `#472 <https://github.com/ClearcodeHQ/pytest-elasticsearch/issues/472>`__, `#473 <https://github.com/ClearcodeHQ/pytest-elasticsearch/issues/473>`__, `#476 <https://github.com/ClearcodeHQ/pytest-elasticsearch/issues/476>`__, `#484 <https://github.com/ClearcodeHQ/pytest-elasticsearch/issues/484>`__, `#486 <https://github.com/ClearcodeHQ/pytest-elasticsearch/issues/486>`__, `#488 <https://github.com/ClearcodeHQ/pytest-elasticsearch/issues/488>`__, `#505 <https://github.com/ClearcodeHQ/pytest-elasticsearch/issues/505>`__


3.0.0
=====

Features
--------

- Import FixtureRequest from pytest, not private _pytest.
  Require at least pytest 6.2
- Replace tmpdir_factory with tmp_path_factory

Removals
--------


- Removed `logs_prefix` process fixture parameter, `--elasticsearch-logsdir`
  command parameter and `elasticsearch_logsdir` ini configuration option
- Removed `elasticsearch_logsdir` process fixture parameter `--elasticsearch-logs-prefix`
  command parameter and `elasticsearch_logs_prefix` ini configuration option

Support
-------

- support only elasticsearch 6.x and up, same as the most recent elasticsearch library

Misc
----

- rely on `get_port` functionality delivered by `port_for`

2.1.0
=====

Features
--------

- Add command line and ini configuration option for the executable.
- Require python 3.7 and up
- Unify handling of a temporary directory, now temporary directory holding logs,
  workdir, pid will be named after fixture name.

Deprecations
------------

- Deprecated `logs_prefix` process fixture parameter, `--elasticsearch-logsdir`
  command parameter and `elasticsearch_logsdir` ini configuration option
- Deprecated `elasticsearch_logsdir` process fixture parameter `--elasticsearch-logs-prefix`
  command parameter and `elasticsearch_logs_prefix` ini configuration option

Bugfix
------

- Handle properly elasticsearch versions with two-digit minor version

Misc
----

- Migrated CI/CD to Github Actions
- Blackified Codebase

2.0.1
=====

- [cleanup] Drop support for python versions older than 3.6
- [fix] Adjust for mirakuru 2.2.0 and up


2.0.0
=====

- [enhancement] Created a specified Executor to manage elasticsearch
- [enhancement] added new elasticsearch_nooproc fixture to connect to already
  existing elasticsearch index
- [cleanup] Drop support for unused discovery_zen_ping_multicast
  and elasticsearch_configuration_path option
- [cleanup] Drop support for elasticsearch older than 5
- [cleanup] Drop support for python versions older than 3.5
- [bugfix] changed default index.memory type to mmapfs, over long invalid
  memory type

1.3.0
=====

- [feature] - Support for major elasticsearch versions


1.2.1
=====

- [cleanup] - removed path.py dependency

1.2.0
=====

- [feature] - migrate usage of getfuncargvalue to getfixturevalue. require at least pytest 3.0.0
- [feature] - default logsdir to $TMPDIR
- [feature] - run process on random port by default - enhances xdist experience

1.1.0
=====

- [feature] use tmpfile.gettempdir instead of hardcoded /tmp directory
- [docs] added description to all command line and ini options
- [bugfix] made command line option's dests more distinc, to prevent from influencing other pytest plugins

1.0.0
=====

- [feature] pytest.ini option for every command line option
- [feature] Command line options for every fixture factory argument
- Extracted original code from pytest-dbfixtures
