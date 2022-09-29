import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plts/utilities/constants.dart';
import 'package:plts/utilities/typography.dart';

Widget formInput(
    text, {
      keyboardType,
      maxLines = 1,
      validator,
      onSaved,
      onTap,
      fieldSubmitted,
      prefixIcon,
      inputAction,
      focusNode,
      suffixIcon,
      controller,
      obsecureText = false,
      maxLength,
      hint,
      onChanged,
      readOnly = false,
      inputFormatters,
      autoFocus = false,
      TextAlign textAlign = TextAlign.start,
      autoValidateMode,
      suffix,
    }) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        text,
        style: kTextBody,
      ),
      const SizedBox(
          height: 10.0),
      SizedBox(
        height: 45,
        child: TextFormField(
          maxLines: maxLines,
          keyboardType: keyboardType,
          cursorColor: kColorBlack,
          controller: controller,
          inputFormatters: inputFormatters,
          obscureText: obsecureText,
          autofocus: autoFocus,
          textInputAction: inputAction,
          onFieldSubmitted: fieldSubmitted,
          maxLength: maxLength,
          focusNode: focusNode,
          readOnly: readOnly,
          textAlign: textAlign,
          autovalidateMode: autoValidateMode,
          style: TextStyle(
            fontSize: 14.0,
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: kColorWhite,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            hintText: hint,
            suffix: suffix,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              borderSide: BorderSide(
                color: kColorGrey2,
              ),
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: 14.0,
              horizontal: 14.0,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              borderSide: BorderSide(
                color: kColorGrey2,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              borderSide: BorderSide(
                color: kColorGrey2,
              ),
            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
          ),
          validator: validator,
          onSaved: onSaved,
          onChanged: onChanged,
          onTap: onTap,
        ),
      )
    ],
  );
}

Widget formSelect(
    text, {
      hint,
      onTap,
      controller,
      validator,
    }) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        text,
        style: kTextBody,
      ),
      SizedBox(height: 10,),
      TextFormField(
        controller: controller,
        readOnly: true,
        style: TextStyle(
          fontSize: 14.0,
        ),
        validator: validator,
        decoration: InputDecoration(
          filled: true,
          fillColor: kColorWhite,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          hintText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
            borderSide: BorderSide(
              color: kColorGrey2,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: 7.0,
            horizontal: 14.0,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
            borderSide: BorderSide(
              color: kColorGrey2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
            borderSide: BorderSide(
              color: kColorGrey2,
            ),
          ),
          suffixIcon: Icon(
            Icons.keyboard_arrow_down,
            color: kColorGrey1,
          ),
        ),
        onTap: onTap,
      ),
    ],
  );
}

Widget formDatePicker(text, {controller, onTap, hint, validator}) {
  return formInput(
    text,
    validator: validator,
    readOnly: true,
    controller: controller,
    suffixIcon: Icon(
      Icons.calendar_today,
      color: kColorGrey1,
    ),
    textAlign: TextAlign.start,
    hint: hint,
    onTap: onTap,
  );
}

Widget formCurrency(text, {controller, hint, validator, autoValidateMode}) {
  return formInput(
    text,
    validator: validator,
    controller: controller,
    autoValidateMode: autoValidateMode,
    prefixIcon: Padding(
      padding: EdgeInsets.all(14.0),
      child: Text(
        "Rp",
        style: kTextBody.copyWith(fontWeight: FontWeight.w700),
      ),
    ),
    textAlign: TextAlign.end,
    hint: hint,
    keyboardType: TextInputType.number,
    inputFormatters: <TextInputFormatter>[
      CurrencyTextInputFormatter(
        locale: 'id',
        decimalDigits: 0,
        symbol: '',
      ),
    ],
  );
}

Widget formUnit(text, suffixText, {controller, hint, validator}) {
  return formInput(
    text,
    controller: controller,
    suffixIcon: Padding(
      padding: EdgeInsets.all(14.0),
      child: Text(
        suffixText,
        style: kTextBody.copyWith(fontWeight: FontWeight.w700),
      ),
    ),
    validator: validator,
    textAlign: TextAlign.start,
    hint: hint,
    keyboardType: TextInputType.number,
    inputFormatters: <TextInputFormatter>[
      CurrencyTextInputFormatter(
        locale: 'id',
        decimalDigits: 0,
        symbol: '',
      ),
    ],
  );
}

Widget formArea(
    text, {
      controller,
      hint,
      autoValidateMode,
      validator,
    }) {
  return formInput(
    text,
    controller: controller,
    hint: hint,
    maxLines: 5,
    autoValidateMode: autoValidateMode,
    validator: validator,
  );
}

Widget formDropdownButton(
    text, {child}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        text,
        style: kTextBody,
      ),
      const SizedBox(height: 10,),
      child,
    ],
  );
}
