using CatalogService as service from '../../srv/CatalogService';

annotate service.EmployeeSet with @(
    UI.SelectionFields:[
        nameFirst,
        nameLast,
        email
    ],
    UI.LineItem:[
        {
            $Type : 'UI.DataField',
            Value : nameFirst,
        },
        {
            $Type : 'UI.DataField',
            Value : nameLast,
        },
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
        TypeName: 'Employee List',
        TypeNamePlural: 'Employee List',
        Title: {Value : nameFirst, Label: 'Employee Name'},
        // Description: {Value: ""},
        ImageUrl: 'https://dxc.com/content/dam/dxc/projects/dxc-com/us/images/about-us/newsroom/logos-for-media/vertical/DXC%20Logo_Purple+Black%20RGB.png'
    }
);