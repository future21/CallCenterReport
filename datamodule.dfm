object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 458
  Width = 737
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    Params = <>
    HandleRedirects = True
    Left = 32
    Top = 16
  end
  object RESTResponse1: TRESTResponse
    Left = 128
    Top = 16
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Method = rmPOST
    Params = <
      item
        name = 'action'
      end
      item
        name = 'clase'
      end
      item
        name = 'valor'
      end>
    Response = RESTResponse1
    OnAfterExecute = RESTRequest1AfterExecute
    SynchronizedEvents = False
    Left = 24
    Top = 84
  end
  object RESTRequest2: TRESTRequest
    Client = RESTClient1
    Method = rmPOST
    Params = <
      item
        name = 'action'
      end
      item
        name = 'clase'
      end
      item
        name = 'valor'
      end>
    Response = RESTResponse1
    OnAfterExecute = RESTRequest2AfterExecute
    SynchronizedEvents = False
    Left = 112
    Top = 84
  end
  object RESTRequest3: TRESTRequest
    Client = RESTClient1
    Method = rmPOST
    Params = <
      item
        name = 'action'
      end
      item
        name = 'clase'
      end
      item
        name = 'valor'
      end>
    Response = RESTResponse1
    OnAfterExecute = RESTRequest3AfterExecute
    SynchronizedEvents = False
    Left = 216
    Top = 84
  end
  object RESTRequest4: TRESTRequest
    Client = RESTClient1
    Method = rmPOST
    Params = <
      item
        name = 'action'
      end
      item
        name = 'clase'
      end
      item
        name = 'valor'
      end
      item
        name = 'error'
      end
      item
        name = 'desde'
      end
      item
        name = 'hasta'
      end
      item
        name = 'queue'
      end
      item
        name = 'agent'
      end>
    Response = RESTResponse1
    OnAfterExecute = RESTRequest4AfterExecute
    SynchronizedEvents = False
    Left = 334
    Top = 84
  end
  object RESTRequest5: TRESTRequest
    Client = RESTClient1
    Method = rmPOST
    Params = <
      item
        name = 'action'
      end
      item
        name = 'clase'
      end
      item
        name = 'valor'
      end
      item
        name = 'error'
      end
      item
        name = 'desde'
      end
      item
        name = 'hasta'
      end
      item
        name = 'queue'
      end
      item
        name = 'agent'
      end>
    Response = RESTResponse1
    OnAfterExecute = RESTRequest5AfterExecute
    SynchronizedEvents = False
    Left = 448
    Top = 84
  end
  object RESTRequest6: TRESTRequest
    Client = RESTClient1
    Method = rmPOST
    Params = <
      item
        name = 'action'
      end
      item
        name = 'clase'
      end
      item
        name = 'valor'
      end
      item
        name = 'error'
      end
      item
        name = 'desde'
      end
      item
        name = 'hasta'
      end
      item
        name = 'queue'
      end
      item
        name = 'agent'
      end>
    Response = RESTResponse1
    OnAfterExecute = RESTRequest6AfterExecute
    SynchronizedEvents = False
    Left = 560
    Top = 84
  end
  object RESTRequest7: TRESTRequest
    Client = RESTClient1
    Method = rmPOST
    Params = <
      item
        name = 'action'
      end
      item
        name = 'clase'
      end
      item
        name = 'valor'
      end>
    Response = RESTResponse1
    OnAfterExecute = RESTRequest7AfterExecute
    SynchronizedEvents = False
    Left = 24
    Top = 160
  end
  object RESTRequest8: TRESTRequest
    Client = RESTClient1
    Method = rmPOST
    Params = <
      item
        name = 'action'
      end
      item
        name = 'clase'
      end
      item
        name = 'valor'
      end>
    Response = RESTResponse1
    OnAfterExecute = RESTRequest8AfterExecute
    SynchronizedEvents = False
    Left = 136
    Top = 160
  end
  object RESTRequest9: TRESTRequest
    Client = RESTClient1
    Method = rmPOST
    Params = <
      item
        name = 'action'
      end
      item
        name = 'clase'
      end
      item
        name = 'valor'
      end>
    Response = RESTResponse1
    OnAfterExecute = RESTRequest9AfterExecute
    SynchronizedEvents = False
    Left = 240
    Top = 160
  end
  object RESTRequest0: TRESTRequest
    Client = RESTClient1
    Method = rmPOST
    Params = <
      item
        name = 'action'
      end
      item
        name = 'clase'
      end
      item
        name = 'valor'
      end>
    Response = RESTResponse1
    OnAfterExecute = RESTRequest0AfterExecute
    SynchronizedEvents = False
    Left = 264
    Top = 20
  end
  object RESTClient2: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    Params = <>
    HandleRedirects = True
    Left = 24
    Top = 280
  end
  object RESTRequest00: TRESTRequest
    Client = RESTClient2
    Method = rmPOST
    Params = <>
    Response = RESTResponse1
    OnAfterExecute = RESTRequest00AfterExecute
    SynchronizedEvents = False
    Left = 144
    Top = 284
  end
end
