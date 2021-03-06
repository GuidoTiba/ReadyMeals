import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.select2').select2({
    theme: "classic", 
    allowClear: true,
    minimumResultsForSearch: -1
  }); // (~ document.querySelectorAll)
};

export { initSelect2 };
