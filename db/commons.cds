namespace guru.common;

type PhoneNumber: String(30);
type Email: String(255);
type YesNo: String(5) enum{
    yes = 'Y';
    no  = 'N';

};

aspect Rgoodies: {
    CHECK: YesNo;
    // TAX_AMOUNT: AmountT @(title : '{i18n>TaxAmount}');
};