package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.miniLayer.vo.QueryMiniLayerVo;
   import net.bigpoint.cityrama.view.miniLayer.ui.QueryMiniLayer;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class MoveBlockedByEmergencyMiniLayerMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "MoveBlockedByEmergencyMiniLayerMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "MoveBlockedByEmergencyMiniLayerMediator";
      }
      
      public function MoveBlockedByEmergencyMiniLayerMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
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
            super.onRegister();
            if(_loc2_)
            {
               this.setLayerData();
               if(!(_loc1_ && _loc2_))
               {
                  this.addListener();
               }
            }
         }
      }
      
      private function addListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            §§push(this.component);
            if(_loc2_ || _loc2_)
            {
               §§pop().addEventListener(Event.CLOSE,this.handleClose);
               if(!_loc1_)
               {
                  addr004c:
                  this.component.addEventListener(QueryMiniLayer.ACCEPT_CLICKED,this.handleClose);
                  addr0049:
               }
               return;
            }
            §§goto(addr004c);
         }
         §§goto(addr0049);
      }
      
      private function handleClose(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(param1)
            {
               if(!_loc3_)
               {
                  param1.stopPropagation();
                  if(_loc2_)
                  {
                     addr002b:
                     facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
                  }
                  §§goto(addr0039);
               }
            }
            §§goto(addr002b);
         }
         addr0039:
      }
      
      private function setLayerData() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:QueryMiniLayerVo = new QueryMiniLayerVo(QueryMiniLayerVo.LAYER_TYPE_ACCEPT);
         if(_loc3_)
         {
            _loc1_.title = LocaUtils.getString("rcl.miniLayer.moveBlockedByEmergency","rcl.miniLayer.moveBlockedByEmergency.title.capital");
            if(_loc3_)
            {
               _loc1_.layerText = LocaUtils.getString("rcl.miniLayer.moveBlockedByEmergency","rcl.miniLayer.moveBlockedByEmergency.flavourText");
               §§goto(addr004b);
            }
            §§goto(addr0088);
         }
         addr004b:
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.acceptBtnLabel = LocaUtils.getString("rcl.miniLayer.moveBlockedByEmergency","rcl.miniLayer.moveBlockedByEmergency.button.capital");
            if(!_loc2_)
            {
               addr0088:
               this.component.data = _loc1_;
            }
         }
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            this.removeListener();
            if(_loc2_)
            {
               addr0029:
               super.onRemove();
            }
            return;
         }
         §§goto(addr0029);
      }
      
      private function removeListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            §§push(this.component);
            if(!_loc1_)
            {
               §§pop().removeEventListener(Event.CLOSE,this.handleClose);
               if(!_loc1_)
               {
                  addr0044:
                  this.component.removeEventListener(QueryMiniLayer.ACCEPT_CLICKED,this.handleClose);
               }
               §§goto(addr0051);
            }
            §§goto(addr0044);
         }
         addr0051:
      }
      
      public function get component() : QueryMiniLayer
      {
         return super.viewComponent as QueryMiniLayer;
      }
   }
}

