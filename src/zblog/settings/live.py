from __future__ import absolute_import, unicode_literals

from .base import *

DEBUG = False
SECRET_KEY=os.environ['SECRET_KEY']

try:
    from .local import *
except ImportError:
    pass
