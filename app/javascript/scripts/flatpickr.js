import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const initFlatpickr = () => {
  flatpickr("#range_start", {
    dateFormat: "D d M Y",
    plugins: [new rangePlugin({ input: "#range_end"})],
    minDate: "today"
  });
}

export { initFlatpickr };