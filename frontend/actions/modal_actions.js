export const RECEIVE_MODAL = "RECEIVE_MODAL";

export const receiveModal = (modal) => {
  return {
    type: RECEIVE_MODAL,
    modal,
  };
};
