import 'package:country_phone_code_picker/country_phone_code_picker.dart';
import 'package:eventing/app/widgets/input_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:sizer/sizer.dart';

import '../controllers/create_event_controller.dart';

class EventInformation extends GetView<CreateEventController> {
  const EventInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      color: Colors.transparent,
      child: Column(
        children: [
          TextWidget(
            text: "Choose event Location",
            fontSize: 16,
          ),
          SizedBox(
            height: 2.h,
          ),
          CountryPhoneCodePicker.withDefaultSelectedCountry(
            defaultCountryCode: Country(
                name: ' --Select Country--',
                countryCode: 'US',
                phoneCode: '+1'),
            borderRadius: 5,
            height: 8.h,
            width: 100.w,
            //backgroundColor: Colors.grey,
            showName: true,
            showFlag: false,
            borderWidth: 1,
            borderColor: Colors.grey,
            style: const TextStyle(fontSize: 16),
            searchBarHintText: 'Search by name',
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            children: [
              Flexible(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1, color: Colors.grey)),
                  child: DropdownButton(
                    hint: TextWidget(
                      text: "  -- Select State --",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    underline: Container(),
                    isExpanded: true,
                    value: controller.selectedState,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: controller.stateList.map((items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(items),
                        ),
                      );
                    }).toList(),
                    onChanged: (v) {
                      controller.selectedState = v.toString();
                      controller.update();
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 2.w,
              ),
              Flexible(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1, color: Colors.grey)),
                  child: DropdownButton(
                    hint: TextWidget(
                      text: "  -- Select City --",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    underline: Container(),
                    isExpanded: true,
                    value: controller.selectedCity,
                    onChanged: (v) {
                      controller.selectedCity = v.toString();
                      controller.update();
                    },
                    icon: Icon(Icons.keyboard_arrow_down),
                    items: controller.cityList.map((items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(items),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          TextWidget(
            text: "Event Type",
            fontSize: 16,
          ),
          SizedBox(
            height: 3.h,
          ),
          Row(
            children: [
              Flexible(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1, color: Colors.grey)),
                  child: DropdownButton(
                    hint: TextWidget(
                      text: "  Categories",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    underline: Container(),
                    isExpanded: true,
                    value: controller.catType,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: controller.catList.map((items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(items),
                        ),
                      );
                    }).toList(),
                    onChanged: (v) {
                      controller.catType = v.toString();
                      controller.update();
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 2.w,
              ),
              Flexible(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1, color: Colors.grey)),
                  child: DropdownButton(
                    hint: TextWidget(
                      text: "  Sub Categories",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    underline: Container(),
                    isExpanded: true,
                    value: controller.catSubType,
                    onChanged: (v) {
                      controller.catSubType = v.toString();
                      controller.update();
                    },
                    icon: Icon(Icons.keyboard_arrow_down),
                    items: controller.subCatList.map((items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(items),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
          TextWidget(
            text: "Event Information",
            fontSize: 16,
          ),
          SizedBox(
            height: 3.h,
          ),
          Row(
            children: [
              Flexible(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1, color: Colors.grey)),
                  child: DropdownButton(
                    hint: TextWidget(
                      text: "  No of Guests",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    underline: Container(),
                    isExpanded: true,
                    value: controller.noGuest,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: controller.guestList.map((items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(items),
                        ),
                      );
                    }).toList(),
                    onChanged: (v) {
                      controller.noGuest = v.toString();
                      controller.update();
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 2.w,
              ),
              Flexible(
                child: InputTextField(
                  hint: 'dd-mm-yyyy',
                  show: "yes",
                ),
              ),
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1, color: Colors.grey)),
            child: DropdownButton(
              hint: TextWidget(
                text: "  Approx Budget",
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              underline: Container(),
              isExpanded: true,
              value: controller.budget,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: controller.budgetList.map((items) {
                return DropdownMenuItem(
                  value: items,
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(items),
                  ),
                );
              }).toList(),
              onChanged: (v) {
                controller.budget = v.toString();
                controller.update();
              },
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          TextWidget(
            text: "Contact Information",
            fontSize: 16,
          ),
          SizedBox(
            height: 3.h,
          ),
          InputTextField(
            hint: 'First Name',
          ),
          SizedBox(
            height: 3.h,
          ),
          InputTextField(
            hint: 'Last Name',
          ),
          SizedBox(
            height: 3.h,
          ),
          InputTextField(
            hint: 'Email',
          ),
          SizedBox(
            height: 3.h,
          ),
          InputTextField(
            maxLine: 4,
            hint: 'Event Description',
          ),
          SizedBox(
            height: 3.h,
          ),
        ],
      ),
    );
  }
}
