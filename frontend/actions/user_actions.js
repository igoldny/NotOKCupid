import * as APIUtil from '../util/user_api_util';

export const RECEIVE_USERS = "RECEIVE_USERS";

export const fetchUsers = () => {
  return (dispatch) => {
    return APIUtil.fetchUsers()
      .then((users) => dispatch(receiveUsers(users)));
  };
};

export const receiveUsers = (users) => {
  return {
    type: RECEIVE_USERS,
    users
  };
};
