export const fetchSingleResponse = (response_id) => {
  return $.ajax({
    method: "GET",
    url: `api/responses/${response_id}`
  });
};

export const fetchResponses = () => {
  return $.ajax({
    method: "GET",
    url: "api/responses"
  });
};

export const postResponse = (response) => {
  return $.ajax({
    method: "POST",
    url: "api/responses",
    data: { response }
  });
};
