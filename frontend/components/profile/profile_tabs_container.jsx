import React from 'react';
import { connect } from 'react-redux';
import ProfileTabs from './profile_tabs';

const mapStateToProps = (state) => ({
  currentProfile: state.currentProfile,
});

export default connect(
  mapStateToProps
)(ProfileTabs);
