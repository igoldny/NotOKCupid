import * as APIUtil from '../util/profile_api_util';

export const RECEIVE_CURRENT_PROFILE = "RECEIVE_CURRENT_PROFILE";
export const RECEIVE_ERRORS = "RECEIVE_ERRORS";
export const CLEAR_ERRORS = "CLEAR_ERRORS";

export const fetchCurrentProfile = (user_id) => {
  return (dispatch) => {
    return APIUtil.fetchProfile(user_id)
      .then((user_id) => dispatch(receiveCurrentProfile(user_id)), (errors) => dispatch(receiveErrors(errors.responseJSON)));
  };
};

export const receiveCurrentProfile = (user) => {
  return {
    type: RECEIVE_CURRENT_PROFILE,
    user
  };
};

export const receiveErrors = (errors) => {
  return {
    type: RECEIVE_ERRORS,
    errors
  };
};

export const clearErrors = () => {
  return {
    type: CLEAR_ERRORS,
  };
};
