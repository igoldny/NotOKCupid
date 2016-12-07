import { combineReducers } from 'redux';
import SessionReducer from './session_reducer';
import ModalReducer from './modal_reducer';
import ProfileReducer from './profile_reducer';

const rootReducer = combineReducers({
  session: SessionReducer,
  modal: ModalReducer,
  currentProfile: ProfileReducer,
});

export default rootReducer;
