 const selectLocation = function(city, jobs) {
   return{
    type: "SWITCH_LOCATION",
    city,
    jobs,
  };
};
window.selectLocation = selectLocation;
export default selectLocation;
