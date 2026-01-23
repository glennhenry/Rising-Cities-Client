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
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc2_))
      {
         NAME = "ExpansionSaleEventProxy";
      }
      
      private var _eventProxy:EventProxy;
      
      private var _expansionProxy:PlayfieldExpansionsProxy;
      
      private var _timerProxy:TimerProxy;
      
      public function ExpansionSaleEventProxy(param1:String, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this._eventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
            if(_loc2_)
            {
               addr0037:
               this._expansionProxy = facade.retrieveProxy(PlayfieldExpansionsProxy.NAME) as PlayfieldExpansionsProxy;
               if(!_loc1_)
               {
                  this._timerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
               }
            }
            return;
         }
         §§goto(addr0037);
      }
      
      public function getIsExpansionOnSale(param1:ConfigPlayfieldExpansionDTO) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(this.getActiveEventForExpansion(param1) == null);
         if(!(_loc3_ && Boolean(this)))
         {
            return !§§pop();
         }
      }
      
      private function getActiveEventForExpansion(param1:ConfigPlayfieldExpansionDTO) : ConfigEventSaleDTO
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:ConfigEventDTO = null;
         var _loc3_:int = 0;
         var _loc4_:* = this._eventProxy.listOfRunningGlobalEvents;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_ || Boolean(param1))
               {
                  if(_loc2_.eventType != ServerEventTypeConst.SALE)
                  {
                     continue;
                  }
                  if(!_loc5_)
                  {
                     break;
                  }
               }
               if(param1.listOfEventIds.indexOf(_loc2_.id != -1))
               {
                  if(_loc5_ || Boolean(_loc3_))
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_ as ConfigEventSaleDTO;
      }
      
      public function getExpansionsaleTimeLeft(param1:ConfigPlayfieldExpansionDTO) : Number
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:ConfigEventSaleDTO = this.getActiveEventForExpansion(param1);
         if(!_loc4_)
         {
            if(_loc2_)
            {
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr0042);
               }
            }
            return 0;
         }
         addr0042:
         §§push(this.getExpansionsaleTimeTotal(param1));
         if(!_loc4_)
         {
            §§push(this._timerProxy.currentTimeStamp);
            if(!_loc4_)
            {
               §§push(§§pop() - _loc2_.availabilityTimeStart);
            }
            return §§pop() - §§pop();
         }
      }
      
      public function getExpansionsaleTimeTotal(param1:ConfigPlayfieldExpansionDTO) : Number
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:ConfigEventSaleDTO = this.getActiveEventForExpansion(param1);
         if(_loc3_)
         {
            if(_loc2_)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  §§goto(addr0041);
               }
            }
            return 0;
         }
         addr0041:
         return _loc2_.totalAvailabilityTime;
      }
      
      public function getRCExpansionCosts(param1:ConfigPlayfieldExpansionDTO) : Number
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc4_:ConfigOutputDTO = null;
         §§push(this._expansionProxy.getRCExpansionCosts(param1));
         if(_loc8_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:ConfigEventSaleDTO = this.getActiveEventForExpansion(param1);
         if(!(_loc7_ && _loc2_))
         {
            if(_loc3_ != null)
            {
               addr004a:
               for each(_loc4_ in _loc3_.listOfAffectedResources)
               {
                  §§push(_loc4_.resourceConfig);
                  if(!_loc7_)
                  {
                     §§push(§§pop() == null);
                     if(!_loc7_)
                     {
                        §§push(!§§pop());
                        if(_loc8_ || Boolean(this))
                        {
                           var _temp_5:* = §§pop();
                           §§push(_temp_5);
                           if(_temp_5)
                           {
                              if(!_loc7_)
                              {
                                 addr009d:
                                 §§pop();
                                 if(_loc7_ && Boolean(param1))
                                 {
                                    break;
                                 }
                                 addr00b1:
                                 §§push(_loc4_.resourceConfig.type == ServerResConst.RESOURCE_REALCURRENCY);
                              }
                           }
                           addr00b9:
                           if(§§pop())
                           {
                              if(!_loc7_)
                              {
                                 §§push(_loc2_);
                                 if(!(_loc7_ && Boolean(_loc3_)))
                                 {
                                    §§push(§§pop() * _loc4_.outputAmount);
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       §§push(§§pop());
                                    }
                                 }
                                 _loc2_ = §§pop();
                              }
                              break;
                           }
                           continue;
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr00b9);
                  }
                  §§goto(addr00b1);
               }
            }
            return Math.floor(_loc2_);
         }
         §§goto(addr004a);
      }
      
      public function get expansionSaleActive() : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:ConfigEventDTO = null;
         for each(_loc1_ in this._eventProxy.listOfRunningGlobalEvents)
         {
            if(!(_loc4_ && Boolean(_loc1_)))
            {
               if(_loc1_.eventType == ServerEventTypeConst.SALE)
               {
                  if(_loc5_)
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
   }
}

