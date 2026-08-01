# Large binary fixture (R-WX-19)

 is 95 MB of incompressible random data.

**Deviation from SYSTEM-TEST.MD 8.7, which specifies 200 MB:** GitHub rejects any
single blob over 100 MB when Git LFS is not in use, so a 200 MB fixture cannot be
pushed to the GitHub remote at all. 95 MB keeps the branch pushable while still
exercising clone size, File Manager listing, folder-as-zip download, and the disk
preflight. For a genuine >100 MB case use the GitLab remote, which has no
equivalent hard limit at this size.
