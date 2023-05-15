# coding: utf-8

from __future__ import absolute_import
from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from swagger_server.models.base_model_ import Model
from swagger_server import util


class NewUser(Model):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    """
    def __init__(self, id: str=None, username: str=None, password: str=None):  # noqa: E501
        """NewUser - a model defined in Swagger

        :param id: The id of this NewUser.  # noqa: E501
        :type id: str
        :param username: The username of this NewUser.  # noqa: E501
        :type username: str
        :param password: The password of this NewUser.  # noqa: E501
        :type password: str
        """
        self.swagger_types = {
            'id': str,
            'username': str,
            'password': str
        }

        self.attribute_map = {
            'id': 'id',
            'username': 'username',
            'password': 'password'
        }
        self._id = id
        self._username = username
        self._password = password

    @classmethod
    def from_dict(cls, dikt) -> 'NewUser':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The NewUser of this NewUser.  # noqa: E501
        :rtype: NewUser
        """
        return util.deserialize_model(dikt, cls)

    @property
    def id(self) -> str:
        """Gets the id of this NewUser.


        :return: The id of this NewUser.
        :rtype: str
        """
        return self._id

    @id.setter
    def id(self, id: str):
        """Sets the id of this NewUser.


        :param id: The id of this NewUser.
        :type id: str
        """
        if id is None:
            raise ValueError("Invalid value for `id`, must not be `None`")  # noqa: E501

        self._id = id

    @property
    def username(self) -> str:
        """Gets the username of this NewUser.


        :return: The username of this NewUser.
        :rtype: str
        """
        return self._username

    @username.setter
    def username(self, username: str):
        """Sets the username of this NewUser.


        :param username: The username of this NewUser.
        :type username: str
        """
        if username is None:
            raise ValueError("Invalid value for `username`, must not be `None`")  # noqa: E501

        self._username = username

    @property
    def password(self) -> str:
        """Gets the password of this NewUser.


        :return: The password of this NewUser.
        :rtype: str
        """
        return self._password

    @password.setter
    def password(self, password: str):
        """Sets the password of this NewUser.


        :param password: The password of this NewUser.
        :type password: str
        """

        self._password = password
