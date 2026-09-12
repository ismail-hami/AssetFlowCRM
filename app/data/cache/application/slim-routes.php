<?php return array (
  0 => 
  array (
    'POST' => 
    array (
      '/espocrm_13-21/AssetFlowCRM/api/v1/Software/action/refreshLicenses' => 'route0',
      '/espocrm_13-21/AssetFlowCRM/api/v1/CLicenes/action/refreshExpiry' => 'route1',
      '/espocrm_13-21/AssetFlowCRM/api/v1/App/destroyAuthToken' => 'route19',
      '/espocrm_13-21/AssetFlowCRM/api/v1/Admin/rebuild' => 'route38',
      '/espocrm_13-21/AssetFlowCRM/api/v1/Admin/clearCache' => 'route39',
      '/espocrm_13-21/AssetFlowCRM/api/v1/Action' => 'route48',
      '/espocrm_13-21/AssetFlowCRM/api/v1/MassAction' => 'route49',
      '/espocrm_13-21/AssetFlowCRM/api/v1/Export' => 'route52',
      '/espocrm_13-21/AssetFlowCRM/api/v1/Import' => 'route55',
      '/espocrm_13-21/AssetFlowCRM/api/v1/Import/file' => 'route56',
      '/espocrm_13-21/AssetFlowCRM/api/v1/Attachment/fromImageUrl' => 'route65',
      '/espocrm_13-21/AssetFlowCRM/api/v1/Email/importEml' => 'route73',
      '/espocrm_13-21/AssetFlowCRM/api/v1/Email/sendTest' => 'route74',
      '/espocrm_13-21/AssetFlowCRM/api/v1/Email/inbox/read' => 'route75',
      '/espocrm_13-21/AssetFlowCRM/api/v1/Email/inbox/important' => 'route77',
      '/espocrm_13-21/AssetFlowCRM/api/v1/Email/inbox/inTrash' => 'route79',
      '/espocrm_13-21/AssetFlowCRM/api/v1/UserSecurity/apiKey/generate' => 'route88',
      '/espocrm_13-21/AssetFlowCRM/api/v1/UserSecurity/password/recovery' => 'route90',
      '/espocrm_13-21/AssetFlowCRM/api/v1/UserSecurity/password/generate' => 'route91',
      '/espocrm_13-21/AssetFlowCRM/api/v1/User/passwordChangeRequest' => 'route92',
      '/espocrm_13-21/AssetFlowCRM/api/v1/User/changePasswordByRequest' => 'route93',
      '/espocrm_13-21/AssetFlowCRM/api/v1/Oidc/backchannelLogout' => 'route96',
    ),
    'GET' => 
    array (
      '/espocrm_13-21/AssetFlowCRM/api/v1/Activities/upcoming' => 'route5',
      '/espocrm_13-21/AssetFlowCRM/api/v1/Activities' => 'route6',
      '/espocrm_13-21/AssetFlowCRM/api/v1/Timeline' => 'route7',
      '/espocrm_13-21/AssetFlowCRM/api/v1/Timeline/busyRanges' => 'route8',
      '/espocrm_13-21/AssetFlowCRM/api/v1/' => 'route17',
      '/espocrm_13-21/AssetFlowCRM/api/v1/App/user' => 'route18',
      '/espocrm_13-21/AssetFlowCRM/api/v1/App/about' => 'route20',
      '/espocrm_13-21/AssetFlowCRM/api/v1/Metadata' => 'route21',
      '/espocrm_13-21/AssetFlowCRM/api/v1/I18n' => 'route22',
      '/espocrm_13-21/AssetFlowCRM/api/v1/Settings' => 'route23',
      '/espocrm_13-21/AssetFlowCRM/api/v1/Stream' => 'route26',
      '/espocrm_13-21/AssetFlowCRM/api/v1/GlobalStream' => 'route27',
      '/espocrm_13-21/AssetFlowCRM/api/v1/GlobalSearch' => 'route28',
      '/espocrm_13-21/AssetFlowCRM/api/v1/Admin/jobs' => 'route40',
      '/espocrm_13-21/AssetFlowCRM/api/v1/CurrencyRate' => 'route46',
      '/espocrm_13-21/AssetFlowCRM/api/v1/Email/inbox/notReadCounts' => 'route82',
      '/espocrm_13-21/AssetFlowCRM/api/v1/Email/insertFieldData' => 'route83',
      '/espocrm_13-21/AssetFlowCRM/api/v1/EmailAddress/search' => 'route85',
      '/espocrm_13-21/AssetFlowCRM/api/v1/Oidc/authorizationData' => 'route95',
    ),
    'PATCH' => 
    array (
      '/espocrm_13-21/AssetFlowCRM/api/v1/Settings' => 'route24',
    ),
    'PUT' => 
    array (
      '/espocrm_13-21/AssetFlowCRM/api/v1/Settings' => 'route25',
      '/espocrm_13-21/AssetFlowCRM/api/v1/CurrencyRate' => 'route47',
      '/espocrm_13-21/AssetFlowCRM/api/v1/Kanban/order' => 'route61',
      '/espocrm_13-21/AssetFlowCRM/api/v1/UserSecurity/password' => 'route89',
    ),
    'DELETE' => 
    array (
      '/espocrm_13-21/AssetFlowCRM/api/v1/Email/inbox/read' => 'route76',
      '/espocrm_13-21/AssetFlowCRM/api/v1/Email/inbox/important' => 'route78',
      '/espocrm_13-21/AssetFlowCRM/api/v1/Email/inbox/inTrash' => 'route80',
    ),
  ),
  1 => 
  array (
    'GET' => 
    array (
      0 => 
      array (
        'regex' => '~^(?|/espocrm_13\\-21/AssetFlowCRM/api/v1/Activities/([^/]+)/([^/]+)/composeEmailAddressList|/espocrm_13\\-21/AssetFlowCRM/api/v1/Activities/([^/]+)/([^/]+)/([^/]+)|/espocrm_13\\-21/AssetFlowCRM/api/v1/Activities/([^/]+)/([^/]+)/([^/]+)/list/([^/]+)|/espocrm_13\\-21/AssetFlowCRM/api/v1/Meeting/([^/]+)/attendees()()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/Call/([^/]+)/attendees()()()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/TargetList/([^/]+)/optedOut()()()()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/([^/]+)/action/([^/]+)()()()()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/([^/]+)/layout/([^/]+)()()()()()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/Admin/fieldManager/([^/]+)/([^/]+)()()()()()()()())$~',
        'routeMap' => 
        array (
          3 => 
          array (
            0 => 'route2',
            1 => 
            array (
              'parentType' => 'parentType',
              'id' => 'id',
            ),
          ),
          4 => 
          array (
            0 => 'route3',
            1 => 
            array (
              'parentType' => 'parentType',
              'id' => 'id',
              'type' => 'type',
            ),
          ),
          5 => 
          array (
            0 => 'route4',
            1 => 
            array (
              'parentType' => 'parentType',
              'id' => 'id',
              'type' => 'type',
              'targetType' => 'targetType',
            ),
          ),
          6 => 
          array (
            0 => 'route9',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          7 => 
          array (
            0 => 'route10',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          8 => 
          array (
            0 => 'route12',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          9 => 
          array (
            0 => 'route34',
            1 => 
            array (
              'controller' => 'controller',
              'action' => 'action',
            ),
          ),
          10 => 
          array (
            0 => 'route35',
            1 => 
            array (
              'controller' => 'controller',
              'name' => 'name',
            ),
          ),
          11 => 
          array (
            0 => 'route41',
            1 => 
            array (
              'scope' => 'scope',
              'name' => 'name',
            ),
          ),
        ),
      ),
      1 => 
      array (
        'regex' => '~^(?|/espocrm_13\\-21/AssetFlowCRM/api/v1/MassAction/([^/]+)/status|/espocrm_13\\-21/AssetFlowCRM/api/v1/Export/([^/]+)/status()|/espocrm_13\\-21/AssetFlowCRM/api/v1/Kanban/([^/]+)()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/Attachment/file/([^/]+)()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/Note/([^/]+)/reactors/([^/]+)()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/Notification/([^/]+)/group()()()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/User/([^/]+)/stream/own()()()()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/User/([^/]+)/acl()()()()()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/([^/]+)/([^/]+)()()()()()()())$~',
        'routeMap' => 
        array (
          2 => 
          array (
            0 => 'route50',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          3 => 
          array (
            0 => 'route53',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          4 => 
          array (
            0 => 'route62',
            1 => 
            array (
              'entityType' => 'entityType',
            ),
          ),
          5 => 
          array (
            0 => 'route63',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          6 => 
          array (
            0 => 'route69',
            1 => 
            array (
              'id' => 'id',
              'type' => 'type',
            ),
          ),
          7 => 
          array (
            0 => 'route70',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          8 => 
          array (
            0 => 'route86',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          9 => 
          array (
            0 => 'route87',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          10 => 
          array (
            0 => 'route99',
            1 => 
            array (
              'controller' => 'controller',
              'id' => 'id',
            ),
          ),
        ),
      ),
      2 => 
      array (
        'regex' => '~^(?|/espocrm_13\\-21/AssetFlowCRM/api/v1/([^/]+)|/espocrm_13\\-21/AssetFlowCRM/api/v1/([^/]+)/([^/]+)/followers|/espocrm_13\\-21/AssetFlowCRM/api/v1/([^/]+)/([^/]+)/stream()|/espocrm_13\\-21/AssetFlowCRM/api/v1/([^/]+)/([^/]+)/posts()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/([^/]+)/([^/]+)/updateStream()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/([^/]+)/([^/]+)/streamAttachments()()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/([^/]+)/([^/]+)/usersAccess()()()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/([^/]+)/([^/]+)/([^/]+)()()()()())$~',
        'routeMap' => 
        array (
          2 => 
          array (
            0 => 'route100',
            1 => 
            array (
              'controller' => 'controller',
            ),
          ),
          3 => 
          array (
            0 => 'route105',
            1 => 
            array (
              'entityType' => 'entityType',
              'id' => 'id',
            ),
          ),
          4 => 
          array (
            0 => 'route108',
            1 => 
            array (
              'controller' => 'controller',
              'id' => 'id',
            ),
          ),
          5 => 
          array (
            0 => 'route109',
            1 => 
            array (
              'controller' => 'controller',
              'id' => 'id',
            ),
          ),
          6 => 
          array (
            0 => 'route110',
            1 => 
            array (
              'controller' => 'controller',
              'id' => 'id',
            ),
          ),
          7 => 
          array (
            0 => 'route113',
            1 => 
            array (
              'entityType' => 'entityType',
              'id' => 'id',
            ),
          ),
          8 => 
          array (
            0 => 'route118',
            1 => 
            array (
              'entityType' => 'entityType',
              'id' => 'id',
            ),
          ),
          9 => 
          array (
            0 => 'route119',
            1 => 
            array (
              'controller' => 'controller',
              'id' => 'id',
              'link' => 'link',
            ),
          ),
        ),
      ),
    ),
    'POST' => 
    array (
      0 => 
      array (
        'regex' => '~^(?|/espocrm_13\\-21/AssetFlowCRM/api/v1/Campaign/([^/]+)/generateMailMerge|/espocrm_13\\-21/AssetFlowCRM/api/v1/Campaign/unsubscribe/([^/]+)()|/espocrm_13\\-21/AssetFlowCRM/api/v1/Campaign/unsubscribe/([^/]+)/([^/]+)()|/espocrm_13\\-21/AssetFlowCRM/api/v1/LeadCapture/form/([^/]+)()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/LeadCapture/([^/]+)()()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/([^/]+)/action/([^/]+)()()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/Admin/fieldManager/([^/]+)()()()()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/MassAction/([^/]+)/subscribe()()()()()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/Export/([^/]+)/subscribe()()()()()()()())$~',
        'routeMap' => 
        array (
          2 => 
          array (
            0 => 'route11',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          3 => 
          array (
            0 => 'route13',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          4 => 
          array (
            0 => 'route15',
            1 => 
            array (
              'emailAddress' => 'emailAddress',
              'hash' => 'hash',
            ),
          ),
          5 => 
          array (
            0 => 'route29',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          6 => 
          array (
            0 => 'route30',
            1 => 
            array (
              'apiKey' => 'apiKey',
            ),
          ),
          7 => 
          array (
            0 => 'route32',
            1 => 
            array (
              'controller' => 'controller',
              'action' => 'action',
            ),
          ),
          8 => 
          array (
            0 => 'route42',
            1 => 
            array (
              'scope' => 'scope',
            ),
          ),
          9 => 
          array (
            0 => 'route51',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          10 => 
          array (
            0 => 'route54',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
        ),
      ),
      1 => 
      array (
        'regex' => '~^(?|/espocrm_13\\-21/AssetFlowCRM/api/v1/Import/([^/]+)/revert|/espocrm_13\\-21/AssetFlowCRM/api/v1/Import/([^/]+)/removeDuplicates()|/espocrm_13\\-21/AssetFlowCRM/api/v1/Import/([^/]+)/unmarkDuplicates()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/Import/([^/]+)/exportErrors()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/Attachment/chunk/([^/]+)()()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/Attachment/copy/([^/]+)()()()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/Note/([^/]+)/myReactions/([^/]+)()()()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/EmailTemplate/([^/]+)/prepare()()()()()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/Email/([^/]+)/attachments/copy()()()()()()()())$~',
        'routeMap' => 
        array (
          2 => 
          array (
            0 => 'route57',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          3 => 
          array (
            0 => 'route58',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          4 => 
          array (
            0 => 'route59',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          5 => 
          array (
            0 => 'route60',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          6 => 
          array (
            0 => 'route64',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          7 => 
          array (
            0 => 'route66',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          8 => 
          array (
            0 => 'route67',
            1 => 
            array (
              'id' => 'id',
              'type' => 'type',
            ),
          ),
          9 => 
          array (
            0 => 'route71',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          10 => 
          array (
            0 => 'route72',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
        ),
      ),
      2 => 
      array (
        'regex' => '~^(?|/espocrm_13\\-21/AssetFlowCRM/api/v1/Email/inbox/folders/([^/]+)|/espocrm_13\\-21/AssetFlowCRM/api/v1/Email/([^/]+)/users()|/espocrm_13\\-21/AssetFlowCRM/api/v1/OAuth/([^/]+)/connection()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/([^/]+)()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/([^/]+)/([^/]+)/followers()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/([^/]+)/([^/]+)/pin()()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/([^/]+)/([^/]+)/([^/]+)()()()())$~',
        'routeMap' => 
        array (
          2 => 
          array (
            0 => 'route81',
            1 => 
            array (
              'folderId' => 'folderId',
            ),
          ),
          3 => 
          array (
            0 => 'route84',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          4 => 
          array (
            0 => 'route97',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          5 => 
          array (
            0 => 'route101',
            1 => 
            array (
              'controller' => 'controller',
            ),
          ),
          6 => 
          array (
            0 => 'route106',
            1 => 
            array (
              'entityType' => 'entityType',
              'id' => 'id',
            ),
          ),
          7 => 
          array (
            0 => 'route114',
            1 => 
            array (
              'Note' => 'Note',
              'id' => 'id',
            ),
          ),
          8 => 
          array (
            0 => 'route120',
            1 => 
            array (
              'controller' => 'controller',
              'id' => 'id',
              'link' => 'link',
            ),
          ),
        ),
      ),
    ),
    'DELETE' => 
    array (
      0 => 
      array (
        'regex' => '~^(?|/espocrm_13\\-21/AssetFlowCRM/api/v1/Campaign/unsubscribe/([^/]+)|/espocrm_13\\-21/AssetFlowCRM/api/v1/Campaign/unsubscribe/([^/]+)/([^/]+)|/espocrm_13\\-21/AssetFlowCRM/api/v1/Admin/fieldManager/([^/]+)/([^/]+)()|/espocrm_13\\-21/AssetFlowCRM/api/v1/Note/([^/]+)/myReactions/([^/]+)()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/OAuth/([^/]+)/connection()()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/([^/]+)/([^/]+)()()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/([^/]+)/([^/]+)/followers()()()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/([^/]+)/([^/]+)/subscription()()()()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/([^/]+)/([^/]+)/pin()()()()()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/([^/]+)/([^/]+)/starSubscription()()()()()()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/([^/]+)/([^/]+)/([^/]+)()()()()()()()())$~',
        'routeMap' => 
        array (
          2 => 
          array (
            0 => 'route14',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          3 => 
          array (
            0 => 'route16',
            1 => 
            array (
              'emailAddress' => 'emailAddress',
              'hash' => 'hash',
            ),
          ),
          4 => 
          array (
            0 => 'route45',
            1 => 
            array (
              'scope' => 'scope',
              'name' => 'name',
            ),
          ),
          5 => 
          array (
            0 => 'route68',
            1 => 
            array (
              'id' => 'id',
              'type' => 'type',
            ),
          ),
          6 => 
          array (
            0 => 'route98',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          7 => 
          array (
            0 => 'route104',
            1 => 
            array (
              'controller' => 'controller',
              'id' => 'id',
            ),
          ),
          8 => 
          array (
            0 => 'route107',
            1 => 
            array (
              'entityType' => 'entityType',
              'id' => 'id',
            ),
          ),
          9 => 
          array (
            0 => 'route112',
            1 => 
            array (
              'controller' => 'controller',
              'id' => 'id',
            ),
          ),
          10 => 
          array (
            0 => 'route115',
            1 => 
            array (
              'Note' => 'Note',
              'id' => 'id',
            ),
          ),
          11 => 
          array (
            0 => 'route117',
            1 => 
            array (
              'entityType' => 'entityType',
              'id' => 'id',
            ),
          ),
          12 => 
          array (
            0 => 'route121',
            1 => 
            array (
              'controller' => 'controller',
              'id' => 'id',
              'link' => 'link',
            ),
          ),
        ),
      ),
    ),
    'OPTIONS' => 
    array (
      0 => 
      array (
        'regex' => '~^(?|/espocrm_13\\-21/AssetFlowCRM/api/v1/LeadCapture/([^/]+))$~',
        'routeMap' => 
        array (
          2 => 
          array (
            0 => 'route31',
            1 => 
            array (
              'apiKey' => 'apiKey',
            ),
          ),
        ),
      ),
    ),
    'PUT' => 
    array (
      0 => 
      array (
        'regex' => '~^(?|/espocrm_13\\-21/AssetFlowCRM/api/v1/([^/]+)/action/([^/]+)|/espocrm_13\\-21/AssetFlowCRM/api/v1/([^/]+)/layout/([^/]+)()|/espocrm_13\\-21/AssetFlowCRM/api/v1/([^/]+)/layout/([^/]+)/([^/]+)()|/espocrm_13\\-21/AssetFlowCRM/api/v1/Admin/fieldManager/([^/]+)/([^/]+)()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/Team/([^/]+)/userPosition()()()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/([^/]+)/([^/]+)()()()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/([^/]+)/([^/]+)/subscription()()()()()()|/espocrm_13\\-21/AssetFlowCRM/api/v1/([^/]+)/([^/]+)/starSubscription()()()()()()())$~',
        'routeMap' => 
        array (
          3 => 
          array (
            0 => 'route33',
            1 => 
            array (
              'controller' => 'controller',
              'action' => 'action',
            ),
          ),
          4 => 
          array (
            0 => 'route36',
            1 => 
            array (
              'controller' => 'controller',
              'name' => 'name',
            ),
          ),
          5 => 
          array (
            0 => 'route37',
            1 => 
            array (
              'controller' => 'controller',
              'name' => 'name',
              'setId' => 'setId',
            ),
          ),
          6 => 
          array (
            0 => 'route43',
            1 => 
            array (
              'scope' => 'scope',
              'name' => 'name',
            ),
          ),
          7 => 
          array (
            0 => 'route94',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          8 => 
          array (
            0 => 'route102',
            1 => 
            array (
              'controller' => 'controller',
              'id' => 'id',
            ),
          ),
          9 => 
          array (
            0 => 'route111',
            1 => 
            array (
              'controller' => 'controller',
              'id' => 'id',
            ),
          ),
          10 => 
          array (
            0 => 'route116',
            1 => 
            array (
              'entityType' => 'entityType',
              'id' => 'id',
            ),
          ),
        ),
      ),
    ),
    'PATCH' => 
    array (
      0 => 
      array (
        'regex' => '~^(?|/espocrm_13\\-21/AssetFlowCRM/api/v1/Admin/fieldManager/([^/]+)/([^/]+)|/espocrm_13\\-21/AssetFlowCRM/api/v1/([^/]+)/([^/]+)())$~',
        'routeMap' => 
        array (
          3 => 
          array (
            0 => 'route44',
            1 => 
            array (
              'scope' => 'scope',
              'name' => 'name',
            ),
          ),
          4 => 
          array (
            0 => 'route103',
            1 => 
            array (
              'controller' => 'controller',
              'id' => 'id',
            ),
          ),
        ),
      ),
    ),
  ),
);