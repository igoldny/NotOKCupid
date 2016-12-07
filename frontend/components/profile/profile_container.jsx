import { connect } from 'react-redux';
import { fetchCurrentProfile } from '../../actions/profile_actions';
import Profile from './profile';


const mapStateToProps = (state) => ({
  profile: state.currentProfile
});

const mapDispatchToProps = dispatch => ({
  fetchCurrentProfile: (user_id) => dispatch(fetchCurrentPokemon(user_id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Profile);
