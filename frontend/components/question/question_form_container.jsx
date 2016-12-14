import { connect } from 'react-redux';
import { createResponse } from '../../actions/response_actions';
import QuestionForm from './question_form';


const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser,
});

const mapDispatchToProps = dispatch => ({
  createResponse: (response) => dispatch(createResponse(response)),
  // skipResponse: (response) => dispatch({ type: "SKIP_RESPONSE", response })
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(QuestionForm);
