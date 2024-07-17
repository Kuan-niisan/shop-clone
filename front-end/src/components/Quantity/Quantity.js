import React from "react";

const Quantity = ({ initialValue, onChange, max }) => {
  const [value, setValue] = React.useState(initialValue);

  const handleChange = (e) => {
    const newValue = Math.max(1, Math.min(max, Number(e.target.value)));
    setValue(newValue);
    onChange(newValue);
  };

  return (
    <div>
      {/* <p>Lựa chọn số lượng</p>
      <input
      type="number"
      value={value}
      onChange={handleChange}
      min="1"
      max={max}
      /> */}
    </div>
  );
};

export default Quantity;
