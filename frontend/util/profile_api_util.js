export const fetchProfile = (user_id) => {
  return $.ajax({
    method: "GET",
    url: `api/users/${user_id}`,
  });
};

export const updateProfile = (user) => {
  return $.ajax({
    method: "PATCH",
    url: `api/users/${user.id}`,
    data: { user }
  });
};

export const updateImage = (formData, user) => {
  return $.ajax({
    method: "PATCH",
    url: `api/users/${user.id}`,
    processData: false,
    contentType: false,
    dataType: 'json',
    data: formData
  });
};
