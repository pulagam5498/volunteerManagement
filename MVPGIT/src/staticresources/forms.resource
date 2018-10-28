

.form-error-msg {
  opacity: 0;
  color:$warn-red;
  transition: opacity 60ms ease-in;
  transition-delay: 70ms;
  min-height: 28px;
  font-size: 14px;
  &.active{
    opacity: 1;
  }
}

.description-count {
  text-align: right;
  color:$light-text;
  font-size: 14px;
  padding-top: 5px;
}

.error-message {
  color: $warn-red;
  display:block;
  font-size: 13px;
  font-weight: 600;
  padding-top: 5px;
}

.error-trim .error-message {
  position: relative;
  top:-16px;
}

.form-explainer {
  color: $light-text;
  text-align: center;
  line-height: 20px;
  padding-bottom: 40px;
  p{
    padding-bottom: 30px;
  }
  a {
    color:#508FB8;
  }
}

.array-control-wrap {
  label {
    width: 100%;
  }
}


.form-header {
  font-weight: 600;
  color:$brand;
  font-size: 25px;
  padding-bottom: 15px;
  border-bottom: 2px solid $light-text;
  margin-bottom: 15px;
}

.ui-widget,
.ui-widget input,
.ui-widget select,
.ui-widget textarea,
.ui-widget button {
  font-family: $carto;
}

label,
.label-placeholder {
  font-weight: 300;
  color: $dark-text;
  padding-bottom: 5px;
  font-size: 15px;
  display: inline-block;
}

input[type='text'],
input[type='password'],
input[type='number'],
textarea,
.ui-dropdown,
.input-placeholder,
select {
  border: 1px solid  $light-text;
  font-family: $carto;
  background-color: #FFF;
  width: 100%;
  padding: 8px;
  font-size: 16px;
  border-radius: 3px;

  &.ng-invalid.ng-touched {
    border-color:$warn-red;
  }

  &:disabled{
    background: $base-grey;
    cursor: not-allowed;
    opacity: 0.35;
  }

  &:hover{
    background-color: #FFF!important;
  }

  @include placeholders{
    font-weight: 300;
    color:$light-text;
  };
}

.input-placeholder {
  border: none;
  padding-left:0;
}

.button-row {
  padding-top: 15px;
}

.button {
  background: $brand;
  font-family: $carto;
  cursor: pointer;
  color:#FFF;
  border: none;
  width: 100%;
  font-size: 16px;
  padding: 10px;
  font-weight: 600;
  border-radius: 3px;
  outline: 0;
  vertical-align: middle;
  text-decoration: none;
  text-align: center;
  cursor: pointer;
  white-space: nowrap;
  user-select: none;
  line-height:1;

  &.inline-btn {
    display: inline-block;
    width: auto;
  }

  &:disabled{
    background: $light-text;
    cursor: not-allowed;
  }

  &.alt-btn{
    background: $button-alt;
    color: $dark-text;
  }

  .btn-load {
    display: none;
    position: relative;
    top:1px;
  }

  &.loading-state{
    .loading-text {
      padding-left: 3px;
    }

    .btn-load {
      display: inline-block;
    }
  }


}

.icon-btn {
  color: $brand;
  &:hover{
    color: $dark-text;
  }
}

// button.button {
//   padding: 9px 10px;
// }

.ui-inputtext.ui-state-focus,
.ui-inputtext:focus {
  box-shadow: none;
}

.ui-dropdown {
  width: 100%!important;
  padding: 5.5px;
  font-family: $carto;

  label.ui-dropdown-label {
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
  }
  .ui-dropdown-trigger {
    border: none;
    background:transparent;
  }
  .fa.fa-caret-down {
    margin-top: .5em!important;
    margin-left: -.5em!important;
  }
  .fa.fa-caret-down:before {
    content: "\F078";
    color: $light-text;
  }

  .ui-dropdown-filter-container {
    width: 100%;
    .ui-dropdown-filter.ui-inputtext{
      width: 100%;
    }

    .fa.fa-search {
      top: 16px;
      left: 12px;
      font-size: 18px;
      right: auto;
    }

    .ui-dropdown-filter.ui-inputtext {
      padding: 8px;
      padding-left: 25px !important;
    }

    .fa.fa-search:before {
      display: inline-block;
      font-family: "workspaceicons" !important;
      font-style: normal !important;
      font-weight: normal !important;
      font-variant: normal !important;
      text-transform: none !important;
      speak: none;
      line-height: 1;
      -webkit-font-smoothing: antialiased;
      -moz-osx-font-smoothing: grayscale;
      content: "\6f";
      color: #979797;
    }
  }
}

.ui-autocomplete {
  width: 100%;
  font-family: $carto;

  &:after{
    position: relative;
    display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    font-size: inherit;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    content: "\f002";
    float: right;
    top: -27px;
    right: 10px;
    color: $light-text;
  }

  // .ui-autocomplete-panel {
  //   max-height: 395px!important;
  // }
}


.results-loading .ui-autocomplete:after,
.results-loading input:after{
    content: "\f110";
    animation: rotating 2s linear infinite;
}




.ui-inputtext.ui-state-focus,
.ui-inputtext:focus,
.ui-inputtext:enabled:hover {
  border-color:$light-text;
}

.ui-autocomplete-panel,
.ui-dropdown-panel  {
  border-radius: 0px;
  box-shadow: 0px 1px 1px rgba(0,0,0,.2);
}

.ui-autocomplete-panel .ui-autocomplete-list,
.ui-dropdown-panel  .ui-dropdown-list {
  padding: 0;
  background: #FAFAFA;
}

.ui-autocomplete-items {
  background: $base-grey;
  border-radius: 0;
}

.ui-autocomplete-panel .ui-autocomplete-list-item,
.ui-dropdown-panel .ui-dropdown-item	 {
  border-radius: 0px!important;
  padding: 5px 10px;

  &:hover {
    background: #FFF;
    color:inherit;
  }

  &.ui-state-highlight {
    background: #eeeeee;
    color: $dark-text;
  }
}

.auto-title {
  font-weight: 600;
  color:$dark-text;
  font-size: 18px;
  padding-bottom: 3px;
}

.auto-sub {
  color:$light-text;
  font-size: 15px;
}

.ui-calendar {
  width: calc(100% - 32px);
}

.ui-calendar button,
.ui-calendar .ui-button:enabled:hover,
.ui-calendar .ui-button:enabled:focus  {
  background: transparent;
  color:$dark-text;
  border-color: $light-text;
  border-left: none;
}

p-autocomplete.ng-invalid.ng-touched input,
p-calendar.ng-dirty.ng-invalid .ui-calendar .ui-inputtext,
p-calendar.ng-dirty.ng-invalid .ui-calendar .ui-inputtext:hover {
  border-color: $warn-red!important;
}


p-calendar.ng-dirty.ng-invalid .ui-calendar button {
  border: 1px solid $warn-red!important;
  border-left: none!important;
}

.ui-calendar .ui-inputtext,
.ui-calendar .ui-inputtext:hover {
  border-right: none!important;
}



.ui-datepicker.ui-widget .ui-datepicker-calendar td a.ui-state-active {
  background-color: $brand;
}

.ui-widget {
  font-family: inherit;
}

.ui-inputtext.ng-dirty.ng-invalid,
p-dropdown.ng-dirty.ng-invalid > .ui-dropdown,
p-autocomplete.ng-dirty.ng-invalid > .ui-autocomplete > .ui-inputtext,
p-calendar.ng-dirty.ng-invalid > .ui-inputtext,
p-chips.ng-dirty.ng-invalid > .ui-inputtext,
p-inputmask.ng-dirty.ng-invalid > .ui-inputtext,
p-checkbox.ng-dirty.ng-invalid .ui-chkbox-box,
p-radiobutton.ng-dirty.ng-invalid .ui-radiobutton-box,
p-inputswitch.ng-dirty.ng-invalid .ui-inputswitch,
p-listbox.ng-dirty.ng-invalid .ui-inputtext,
p-multiselect.ng-dirty.ng-invalid > .ui-multiselect,
p-spinner.ng-dirty.ng-invalid > .ui-inputtext,
p-selectbutton.ng-dirty.ng-invalid .ui-button,
p-togglebutton.ng-dirty.ng-invalid .ui-button {
  border-color:$warn-red;
}

.calendar-wrap {
  position: relative;
  // z-index: 1;

  .mock-placeholder {
    position: absolute;
    z-index: -1;
    top: 10px;
    left: 8px;
    color:#757575;
  }

  p-calendar {
    position: relative;
    // z-index: 100;
  }

  input[type='text'],
  .ui-inputtext,
  .ui-calendar.ui-calendar-w-btn input {
    background:transparent;
    z-index: 10;

    &:focus{
      background:#FFF!important;
      background-color:#FFF!important;
    }
  }


  &.no-placeholder p-calendar + .mock-placeholder,
  p-calendar.ng-invalid + .mock-placeholder {
    display: none;
  }
}