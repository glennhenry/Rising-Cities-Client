package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.miniLayer.vo.QueryMiniLayerVo;
   import net.bigpoint.cityrama.model.professionals.ProfessionalProxy;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.QueryMiniLayer;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ProfessionalFireMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "ProfessionalFireMiniLayerMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc2_)
      {
         NAME = "ProfessionalFireMiniLayerMediator";
      }
      
      private var _data:Number;
      
      public function ProfessionalFireMiniLayerMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super.onRegister();
            if(_loc1_)
            {
               addr0027:
               this.addListener();
            }
            return;
         }
         §§goto(addr0027);
      }
      
      private function addListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            §§push(this.component);
            if(_loc2_)
            {
               §§pop().addEventListener(Event.CLOSE,this.handleClose);
               if(!(_loc1_ && Boolean(this)))
               {
                  §§push(this.component);
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(QueryMiniLayer.CONFIRM_CLICKED);
                     if(_loc2_)
                     {
                        §§pop().addEventListener(§§pop(),this.onConfirm);
                        if(_loc2_ || _loc2_)
                        {
                           addr008c:
                           this.component.addEventListener(QueryMiniLayer.DENY_CLICKED,this.handleClose);
                           addr0086:
                           addr0083:
                        }
                        §§goto(addr0093);
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0083);
            }
            §§goto(addr0086);
         }
         addr0093:
      }
      
      private function handleClose(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            if(param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  param1.stopPropagation();
                  if(!_loc2_)
                  {
                     addr0049:
                     facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
                  }
               }
               §§goto(addr0057);
            }
            §§goto(addr0049);
         }
         addr0057:
      }
      
      private function onConfirm(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            param1.stopPropagation();
         }
         var _loc2_:ProfessionalProxy = facade.retrieveProxy(ProfessionalProxy.NAME) as ProfessionalProxy;
         if(_loc4_ || Boolean(this))
         {
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PROFESSIONAL_FIRE,{
               "pid":this._data,
               "bid":_loc2_.getProfessionalById(this._data).buildingId
            });
            if(!(_loc3_ && Boolean(param1)))
            {
               addr0088:
               this.handleClose();
            }
            return;
         }
         §§goto(addr0088);
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(param1 is Number)
            {
               if(_loc2_ || Boolean(this))
               {
                  this._data = param1 as Number;
                  if(!_loc3_)
                  {
                     this.setLayerData();
                  }
               }
            }
         }
      }
      
      private function setLayerData() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:QueryMiniLayerVo = new QueryMiniLayerVo(QueryMiniLayerVo.LAYER_TYPE_QUERY);
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.title = LocaUtils.getString("rcl.miniLayer.fireprofressional","rcl.miniLayer.fireprofressional.title");
            if(_loc3_)
            {
               _loc1_.layerText = LocaUtils.getString("rcl.miniLayer.fireprofressional","rcl.miniLayer.fireprofressional.flavour");
               if(_loc3_)
               {
                  _loc1_.confirmBtnLabel = LocaUtils.getString("rcl.miniLayer.fireprofressional","rcl.miniLayer.fireprofressional.buttonOk");
                  addr0068:
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr0091);
                  }
                  §§goto(addr00a6);
               }
               addr0091:
               _loc1_.denyBtnLabel = LocaUtils.getString("rcl.miniLayer.fireprofressional","rcl.miniLayer.fireprofressional.buttonAbort");
               if(!_loc2_)
               {
                  addr00a6:
                  this.component.data = _loc1_;
               }
               §§goto(addr00ac);
            }
            §§goto(addr0068);
         }
         addr00ac:
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            this.removeListener();
            if(!_loc1_)
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
         if(_loc2_)
         {
            §§push(this.component);
            if(!_loc1_)
            {
               §§pop().removeEventListener(Event.CLOSE,this.handleClose);
               if(_loc2_ || _loc2_)
               {
                  §§push(this.component);
                  if(_loc2_ || Boolean(this))
                  {
                     §§push(QueryMiniLayer.CONFIRM_CLICKED);
                     if(!_loc1_)
                     {
                        §§pop().removeEventListener(§§pop(),this.onConfirm);
                        if(_loc2_)
                        {
                           addr007c:
                           this.component.removeEventListener(QueryMiniLayer.DENY_CLICKED,this.handleClose);
                           addr0076:
                           addr0073:
                        }
                        §§goto(addr0083);
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr0076);
               }
               addr0083:
               return;
            }
            §§goto(addr0076);
         }
         §§goto(addr0073);
      }
      
      public function get component() : QueryMiniLayer
      {
         return super.viewComponent as QueryMiniLayer;
      }
   }
}

