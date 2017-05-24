import { connect } from 'react-redux';
import { fetchResponses } from '../../actions/response_actions';
import { fetchQuestions } from '../../actions/question_actions';
import Questions from './questions';
import { fetchCurrentProfile, updateProfile } from '../../actions/profile_actions';


const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser,
  profile: state.currentProfile.currentProfile,
  questions: state.questions.questions,
  responses: state.responses.responses
});

const mapDispatchToProps = dispatch => ({
  fetchResponses: (user_id) => dispatch(fetchResponses(user_id)),
  fetchQuestions: () => dispatch(fetchQuestions()),
  updateProfile: (user) => dispatch(updateProfile(user))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Questions);
