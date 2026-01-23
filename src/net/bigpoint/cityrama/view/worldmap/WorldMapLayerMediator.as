package net.bigpoint.cityrama.view.worldmap
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerFeatureConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.CityProxy;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.server.vo.server.PlayfieldLightVo;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.event.SimpleEvent;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class WorldMapLayerMediator extends Mediator implements IDataReceiverMediator
   {
      
      public static const NAME:String = "WorldMapLayerMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && WorldMapLayerMediator))
      {
         NAME = "WorldMapLayerMediator";
      }
      
      private var _showCloseButton:Boolean;
      
      public function WorldMapLayerMediator(param1:String, param2:*)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(this))
         {
            super(param1,param2);
         }
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            if(param1 is Boolean)
            {
               if(_loc2_ || _loc2_)
               {
                  this._showCloseButton = param1 as Boolean;
                  if(!_loc3_)
                  {
                     addr0058:
                     this.collectPlayfieldData();
                     if(!_loc3_)
                     {
                        this.component.setData(this._showCloseButton);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0058);
      }
      
      private function collectPlayfieldData() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:FeatureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
         var _loc2_:Array = [true,_loc1_.isFeatureEnabled(ServerFeatureConstants.COASTAL_PLAYFIELD_SWITCH),_loc1_.isFeatureEnabled(ServerFeatureConstants.SUBURBAN_PLAYFIELD_SWITCH),_loc1_.isFeatureEnabled(ServerFeatureConstants.MOUNTAIN_PLAYFIELD_SWITCH)];
         if(_loc3_)
         {
            this.component.setValidPlayfields(_loc2_);
         }
      }
      
      public function get component() : WorldMapLayer
      {
         return viewComponent as WorldMapLayer;
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.addListeners();
         }
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            this.removeListeners();
            if(!_loc2_)
            {
               addr0028:
               facade.sendNotification(ApplicationNotificationConstants.SHOW_GUI,true);
            }
            return;
         }
         §§goto(addr0028);
      }
      
      private function addListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.component);
            if(_loc2_)
            {
               §§pop().addEventListener(Event.CLOSE,this.finalCall);
               if(_loc2_ || Boolean(this))
               {
                  addr0044:
                  this.component.addEventListener(WorldMapLayer.EVENT_PLAYFIELD_SELECTED,this.onPlayfieldSelected);
               }
               §§goto(addr0052);
            }
            §§goto(addr0044);
         }
         addr0052:
      }
      
      private function removeListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.component);
            if(!(_loc1_ && _loc2_))
            {
               §§pop().removeEventListener(Event.CLOSE,this.finalCall);
               if(!_loc1_)
               {
                  addr0044:
                  this.component.removeEventListener(WorldMapLayer.EVENT_PLAYFIELD_SELECTED,this.onPlayfieldSelected);
                  addr0041:
               }
               return;
            }
            §§goto(addr0044);
         }
         §§goto(addr0041);
      }
      
      private function finalCall(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         }
      }
      
      private function onPlayfieldSelected(param1:SimpleEvent) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:int = param1.data as int;
         var _loc3_:PlayfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            §§push(Boolean(_loc3_));
            if(_loc5_ || Boolean(_loc2_))
            {
               var _temp_4:* = §§pop();
               §§push(_temp_4);
               if(_temp_4)
               {
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     §§pop();
                     if(!_loc4_)
                     {
                        §§push(_loc3_.config);
                        if(_loc5_)
                        {
                           §§push(§§pop());
                           if(_loc5_ || Boolean(_loc3_))
                           {
                              addr007f:
                              if(§§pop())
                              {
                                 if(_loc5_ || Boolean(_loc2_))
                                 {
                                    addr00a3:
                                    if(_loc3_.config.id == _loc2_)
                                    {
                                       if(!(_loc4_ && Boolean(this)))
                                       {
                                          this.finalCall();
                                          if(!(_loc4_ && Boolean(_loc3_)))
                                          {
                                             return;
                                          }
                                          addr00da:
                                          §§push(this.isValidPlayfield(_loc2_));
                                          if(_loc5_ || Boolean(_loc2_))
                                          {
                                             addr00ef:
                                             if(§§pop())
                                             {
                                                if(!(_loc4_ && Boolean(this)))
                                                {
                                                   addr0101:
                                                   facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_SWITCH_PLAYFIELD,_loc2_);
                                                   if(!(_loc5_ || Boolean(this)))
                                                   {
                                                      addr0144:
                                                      facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_SWITCH_PLAYFIELD,_loc2_);
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             addr0132:
                                             if(§§pop())
                                             {
                                                if(_loc5_ || Boolean(this))
                                                {
                                                   §§goto(addr0144);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr0150);
                                    }
                                 }
                                 §§goto(addr00da);
                              }
                              else
                              {
                                 §§push(this.isValidPlayfield(_loc2_));
                              }
                           }
                           §§goto(addr0132);
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr0101);
                  }
               }
               §§goto(addr007f);
            }
            §§goto(addr00ef);
         }
         addr0150:
      }
      
      private function isValidPlayfield(param1:int) : Boolean
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:PlayfieldLightVo = null;
         var _loc2_:CityProxy = facade.retrieveProxy(CityProxy.NAME) as CityProxy;
         for each(_loc3_ in _loc2_.city.playfields)
         {
            if(_loc6_)
            {
               if(_loc3_.configId == param1)
               {
                  if(_loc6_)
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

