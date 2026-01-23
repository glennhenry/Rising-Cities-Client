package net.bigpoint.cityrama.model.events
{
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.events.vo.ServerEventTypeConst;
   import net.bigpoint.cityrama.model.field.PlayfieldExpansionsProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigEventDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigEventSaleDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldExpansionDTO;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class ExpansionSaleEventProxy extends Proxy
   {
      
      public static const NAME:String = "ExpansionSaleEventProxy";
      
      private var _eventProxy:EventProxy;
      
      private var _expansionProxy:PlayfieldExpansionsProxy;
      
      private var _timerProxy:TimerProxy;
      
      public function ExpansionSaleEventProxy(param1:String, param2:Object = null)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         this._eventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         this._expansionProxy = facade.retrieveProxy(PlayfieldExpansionsProxy.NAME) as PlayfieldExpansionsProxy;
         this._timerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
      }
      
      public function getIsExpansionOnSale(param1:ConfigPlayfieldExpansionDTO) : Boolean
      {
         return this.getActiveEventForExpansion(param1) != null;
      }
      
      private function getActiveEventForExpansion(param1:ConfigPlayfieldExpansionDTO) : ConfigEventSaleDTO
      {
         var _loc2_:ConfigEventDTO = null;
         for each(_loc2_ in this._eventProxy.listOfRunningGlobalEvents)
         {
            if(_loc2_.eventType == ServerEventTypeConst.SALE)
            {
               if(param1.listOfEventIds.indexOf(_loc2_.id != -1))
               {
                  return _loc2_ as ConfigEventSaleDTO;
               }
            }
         }
         return null;
      }
      
      public function getExpansionsaleTimeLeft(param1:ConfigPlayfieldExpansionDTO) : Number
      {
         var _loc2_:ConfigEventSaleDTO = this.getActiveEventForExpansion(param1);
         if(_loc2_)
         {
            return this.getExpansionsaleTimeTotal(param1) - (this._timerProxy.currentTimeStamp - _loc2_.availabilityTimeStart);
         }
         return 0;
      }
      
      public function getExpansionsaleTimeTotal(param1:ConfigPlayfieldExpansionDTO) : Number
      {
         var _loc2_:ConfigEventSaleDTO = this.getActiveEventForExpansion(param1);
         if(_loc2_)
         {
            return _loc2_.totalAvailabilityTime;
         }
         return 0;
      }
      
      public function getRCExpansionCosts(param1:ConfigPlayfieldExpansionDTO) : Number
      {
         var _loc4_:ConfigOutputDTO = null;
         var _loc2_:Number = this._expansionProxy.getRCExpansionCosts(param1);
         var _loc3_:ConfigEventSaleDTO = this.getActiveEventForExpansion(param1);
         if(_loc3_ != null)
         {
            for each(_loc4_ in _loc3_.listOfAffectedResources)
            {
               if(_loc4_.resourceConfig != null && _loc4_.resourceConfig.type == ServerResConst.RESOURCE_REALCURRENCY)
               {
                  _loc2_ *= _loc4_.outputAmount;
                  break;
               }
            }
         }
         return Math.floor(_loc2_);
      }
      
      public function get expansionSaleActive() : Boolean
      {
         var _loc1_:ConfigEventDTO = null;
         for each(_loc1_ in this._eventProxy.listOfRunningGlobalEvents)
         {
            if(_loc1_.eventType == ServerEventTypeConst.SALE)
            {
               return true;
            }
         }
         return false;
      }
   }
}

