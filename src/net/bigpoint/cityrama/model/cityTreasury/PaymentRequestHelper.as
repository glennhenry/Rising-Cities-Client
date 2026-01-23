package net.bigpoint.cityrama.model.cityTreasury
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.ExternalPaymentPackInfoVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackUpsellingDTO;
   
   public class PaymentRequestHelper extends EventDispatcher
   {
      
      private var _paymentDictionary:Dictionary;
      
      private var _packs:Vector.<ConfigPaymentPackDTO>;
      
      private var _upsell:Vector.<ConfigPaymentPackUpsellingDTO>;
      
      public function PaymentRequestHelper()
      {
         super();
         this._paymentDictionary = new Dictionary();
      }
      
      public function get paymentDictionary() : Dictionary
      {
         return this._paymentDictionary;
      }
      
      public function requestPacksFromPayment(param1:Vector.<ConfigPaymentPackDTO>, param2:String, param3:String) : void
      {
         var paymentRequestString:String;
         var pack:ConfigPaymentPackDTO = null;
         var urlLoader:URLLoader = null;
         var request:URLRequest = null;
         var $packs:Vector.<ConfigPaymentPackDTO> = param1;
         var $category:String = param2;
         var $paymentURL:String = param3;
         this._packs = $packs;
         paymentRequestString = $paymentURL + "&" + $category;
         for each(pack in this._packs)
         {
            paymentRequestString += "&item[]=" + pack.key;
         }
         paymentRequestString += "&price";
         urlLoader = new URLLoader();
         request = new URLRequest(paymentRequestString);
         request.method = URLRequestMethod.GET;
         urlLoader.addEventListener(Event.COMPLETE,this.handlePaymentResponse);
         urlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onPHPiOError);
         try
         {
            urlLoader.load(request);
         }
         catch(e:Error)
         {
            handlePHPError(urlLoader);
         }
      }
      
      public function requestUpsellPacksFromPayment(param1:Vector.<ConfigPaymentPackUpsellingDTO>, param2:String, param3:String) : void
      {
         var paymentRequestString:String;
         var pack:ConfigPaymentPackUpsellingDTO = null;
         var urlLoader:URLLoader = null;
         var request:URLRequest = null;
         var $packs:Vector.<ConfigPaymentPackUpsellingDTO> = param1;
         var $category:String = param2;
         var $paymentURL:String = param3;
         this._upsell = $packs;
         paymentRequestString = $paymentURL + "&" + $category;
         for each(pack in this._upsell)
         {
            paymentRequestString += "&item[]=" + pack.key;
         }
         paymentRequestString += "&price";
         urlLoader = new URLLoader();
         request = new URLRequest(paymentRequestString);
         request.method = URLRequestMethod.GET;
         urlLoader.addEventListener(Event.COMPLETE,this.handlePaymentResponse);
         urlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onPHPiOError);
         try
         {
            urlLoader.load(request);
         }
         catch(e:Error)
         {
            handlePHPError(urlLoader);
         }
      }
      
      private function handlePaymentResponse(param1:Event) : void
      {
         var _loc2_:URLLoader = null;
         var _loc3_:Object = null;
         if(param1.target is URLLoader)
         {
            _loc2_ = param1.target as URLLoader;
            _loc2_.removeEventListener(Event.COMPLETE,this.handlePaymentResponse);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onPHPiOError);
            if(_loc2_.data)
            {
               _loc3_ = JSON.parse(_loc2_.data);
               this.fillPaymentDictionary(_loc3_);
            }
         }
      }
      
      private function onPHPiOError(param1:IOErrorEvent) : void
      {
         if(param1.target is URLLoader)
         {
            this.handlePHPError(param1.target as URLLoader);
         }
      }
      
      private function handlePHPError(param1:URLLoader) : void
      {
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onPHPiOError);
         param1.removeEventListener(Event.COMPLETE,this.handlePaymentResponse);
         this.fillPaymentDictionary();
      }
      
      private function fillPaymentDictionary(param1:Object = null) : void
      {
         var _loc2_:ExternalPaymentPackInfoVo = null;
         var _loc3_:ConfigPaymentPackDTO = null;
         var _loc4_:Object = null;
         var _loc5_:ConfigPaymentPackUpsellingDTO = null;
         var _loc6_:Object = null;
         this._paymentDictionary = new Dictionary();
         if(!param1)
         {
            param1 = new Object();
            param1.items = new Array();
         }
         if(this._packs)
         {
            for each(_loc3_ in this._packs)
            {
               _loc2_ = new ExternalPaymentPackInfoVo();
               _loc2_.packConfigId = _loc3_.id;
               for each(_loc4_ in param1.items)
               {
                  if(_loc4_.type == _loc3_.key || _loc4_.type + "_" + int(_loc4_.amount) == _loc3_.key)
                  {
                     _loc2_.currency = _loc4_.priceCurrency;
                     _loc2_.price = _loc4_.price;
                     _loc2_.amount = Number(_loc4_.amount);
                     break;
                  }
               }
               this._paymentDictionary[_loc2_.packConfigId] = _loc2_;
            }
         }
         else if(this._upsell)
         {
            for each(_loc5_ in this._upsell)
            {
               _loc2_ = new ExternalPaymentPackInfoVo();
               _loc2_.packConfigId = _loc5_.id;
               for each(_loc6_ in param1.items)
               {
                  if(_loc6_.type == _loc5_.key)
                  {
                     _loc2_.currency = _loc6_.priceCurrency;
                     _loc2_.price = _loc6_.price;
                     _loc2_.amount = Number(_loc6_.amount);
                     break;
                  }
               }
               this._paymentDictionary[_loc5_.key] = _loc2_;
            }
         }
      }
   }
}

