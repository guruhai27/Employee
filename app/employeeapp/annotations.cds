using CatalogService as service from '../../srv/CatalogService';

annotate service.EmployeeSet with @(
    UI.SelectionFields:[
        nameFirst,
        // nameLast,
        email
    ],
    UI.LineItem:[
        {
            $Type : 'UI.DataField',
            Value : nameFirst,
        },
        // {
        //     $Type : 'UI.DataField',
        //     Value : nameLast,
        // },
        {
            $Type : 'UI.DataField',
            Value : phoneNumber,
        },
        {
            $Type : 'UI.DataField',
            Value : email,
        },
        // {
        //     $Type : 'UI.DataField',
        //     Value : workLocation,
        // },

        {
            $Type : 'UI.DataField',
            Value : recvdGoodies,
            Criticality: StatusCode
        },        
    ],
        UI.HeaderInfo:{
        TypeName: 'Employee',
        TypeNamePlural: 'Employee List',
        Title: {Value : nameFirst, Label: 'Employee Name'},
        // Description: {Value: ""},
        ImageUrl: 'https://dxc.com/content/dam/dxc/projects/dxc-com/us/images/about-us/newsroom/logos-for-media/vertical/DXC%20Logo_Purple+Black%20RGB.png'
    },

        UI.Facets:[
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Update Details',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Target : '@UI.Identification',
                    Label : 'Update Details',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Target : '@UI.FieldGroup#Spiderman',
                    Label: 'EmployeeDetails'
                },
                // {
                //     $Type : 'UI.ReferenceFacet',
                //     Target : '@UI.FieldGroup#Superman',
                //     Label: 'Update'
                // },
            ],
        },
        // {
        //     $Type : 'UI.ReferenceFacet',
        //     Target : 'Items/@UI.LineItem',
        //     Label: 'PO Items'
        // },
    ],
    UI.Identification: [
        {
            $Type : 'UI.DataField',
            Value : nameFirst,
            Label : 'Employee Name'
        },
        // {
        //     $Type : 'UI.DataField',
        //     Value : phoneNumber,
        // },
    ],
    UI.FieldGroup #Spiderman:{
        Label : 'Employee Details',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : phoneNumber,
                Label : 'Phone No'
            },
            {
                $Type : 'UI.DataField',
                Value : email,
                Label : 'Email'
            },
            {
                $Type : 'UI.DataField',
                Value : recvdGoodies,
                Criticality: StatusCode,
                ![@UI.Importance] : #High,
                Label : 'Goodies Received'
            },
        ],
    },
    // UI.FieldGroup #Superman:{
    //     Label: 'Update',
    //     Data : [
    //         {
    //             $Type : 'UI.DataField',
    //             Value : recvdGoodies,
    //             Criticality: StatusCode,
    //             ![@UI.Importance] : #High,
    //             Label : 'Goodies Received'
    //         },
    //     ],
    // }
 
);

annotate service.EmployeeSet with {
    recvdGoodies @Common.FieldControl : #Mandatory
};
annotate service.EmployeeSet with {
    recvdGoodies @UI.MultiLineText : true
};
// annotate service. with {
//     // recvdGoodies @(
//     //     ValueList.entity: service.ProductSet,
//     //     Common.Text: PRODUCT_GUID.DESCRIPTION,
//     //     Common.TextArrangement: #TextOnly
//     );
// };