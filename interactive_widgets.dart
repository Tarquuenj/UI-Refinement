TextFormField(
  decoration: InputDecoration(labelText: 'Recipient Name'),
  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a name';
    }
    return null;
  },
);
DropdownButton<String>(
  value: selectedOption,
  items: ['Option 1', 'Option 2'].map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList(),
  onChanged: (String? newValue) {
    setState(() {
      selectedOption = newValue!;
    });
  },
);
Switch(
  value: isSwitched,
  onChanged: (value) {
    setState(() {
      isSwitched = value;
    });
  },
);
