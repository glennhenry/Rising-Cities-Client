package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.horizon.vo.HorizionSettingsVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.QueryMiniLayerVo;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.QueryMiniLayer;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class SwitchPlayfieldQueryMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "SwitchPlayfieldQueryMiniLayerMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "SwitchPlayfieldQueryMiniLayerMediator";
      }
      
      private var _targetPlayfieldId:uint;
      
      public function SwitchPlayfieldQueryMiniLayerMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param1)))
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.onRegister();
            if(_loc2_ || Boolean(this))
            {
               sendNotification(VirtualTaskNotificationInterest.PLAYFIELDSWITCH_MINILAYER_OPENED);
               if(_loc2_ || _loc1_)
               {
                  addr0054:
                  this.setLayerData();
                  if(_loc2_ || _loc1_)
                  {
                     this.addListener();
                  }
               }
            }
            return;
         }
         §§goto(addr0054);
      }
      
      private function setLayerData() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:QueryMiniLayerVo = new QueryMiniLayerVo(QueryMiniLayerVo.LAYER_TYPE_QUERY);
         if(_loc2_)
         {
            _loc1_.title = LocaUtils.getString("rcl.miniLayer.playfieldSwitch","rcl.miniLayer.playfieldSwitch.title.capital");
            if(_loc2_ || _loc3_)
            {
               _loc1_.confirmBtnLabel = LocaUtils.getString("rcl.miniLayer.playfieldSwitch","rcl.miniLayer.playfieldSwitch.acceptButton.capital");
               if(!_loc3_)
               {
                  _loc1_.confirmBtnTooltip = LocaUtils.getString("rcl.miniLayer.playfieldSwitch","rcl.miniLayer.playfieldSwitch.acceptButton.tooltip");
                  if(!_loc3_)
                  {
                     addr007b:
                     _loc1_.denyBtnLabel = LocaUtils.getString("rcl.miniLayer.playfieldSwitch","rcl.miniLayer.playfieldSwitch.denyButton.capital");
                     if(!_loc3_)
                     {
                        _loc1_.denyBtnTooltip = LocaUtils.getString("rcl.miniLayer.playfieldSwitch","rcl.miniLayer.playfieldSwitch.denyButton.tooltip");
                        if(!_loc3_)
                        {
                           §§goto(addr00b4);
                        }
                        §§goto(addr00d8);
                     }
                     addr00b4:
                     _loc1_.layerText = HorizionSettingsVo.getMinilayerText(HorizionSettingsVo.playfieldIdToGfxId(this._targetPlayfieldId));
                     if(_loc2_ || _loc2_)
                     {
                        addr00d8:
                        this.component.data = _loc1_;
                     }
                     §§goto(addr00de);
                  }
                  addr00de:
                  return;
               }
            }
         }
         §§goto(addr007b);
      }
      
      private function addListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.component);
            if(_loc2_ || _loc2_)
            {
               §§push(QueryMiniLayer.CONFIRM_CLICKED);
               if(_loc2_ || Boolean(this))
               {
                  §§pop().addEventListener(§§pop(),this.handlePlayfieldSwitch);
                  if(_loc2_)
                  {
                     §§push(this.component);
                     if(!_loc1_)
                     {
                        §§goto(addr0068);
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr007c);
               }
               addr0068:
               §§pop().addEventListener(QueryMiniLayer.DENY_CLICKED,this.handleClose);
               if(!(_loc1_ && _loc2_))
               {
                  addr007f:
                  this.component.addEventListener(Event.CLOSE,this.handleClose);
                  addr007c:
               }
               §§goto(addr008b);
            }
            §§goto(addr007f);
         }
         addr008b:
      }
      
      private function handlePlayfieldSwitch(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            param1.stopPropagation();
            if(_loc2_ || Boolean(param1))
            {
               §§goto(addr003e);
            }
            §§goto(addr0052);
         }
         addr003e:
         sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_SWITCH_PLAYFIELD,this._targetPlayfieldId);
         if(_loc2_)
         {
            addr0052:
            sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,NAME);
         }
      }
      
      private function handleClose(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            param1.stopPropagation();
            if(!_loc2_)
            {
               addr0020:
               sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,NAME);
            }
            return;
         }
         §§goto(addr0020);
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
               sendNotification(VirtualTaskNotificationInterest.PLAYFIELDSWITCH_MINILAYER_CLOSED);
               if(_loc2_)
               {
                  super.onRemove();
               }
            }
         }
      }
      
      private function removeListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.component);
            if(!(_loc1_ && Boolean(this)))
            {
               §§push(QueryMiniLayer.CONFIRM_CLICKED);
               if(_loc2_ || _loc2_)
               {
                  §§pop().removeEventListener(§§pop(),this.handlePlayfieldSwitch);
                  if(_loc2_ || _loc2_)
                  {
                     addr0058:
                     §§push(this.component);
                     if(!(_loc1_ && Boolean(this)))
                     {
                        §§goto(addr0078);
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr008c);
               }
               addr0078:
               §§pop().removeEventListener(QueryMiniLayer.DENY_CLICKED,this.handleClose);
               if(!(_loc1_ && _loc1_))
               {
                  addr008f:
                  this.component.removeEventListener(Event.CLOSE,this.handleClose);
                  addr008c:
               }
               return;
            }
            §§goto(addr008f);
         }
         §§goto(addr0058);
      }
      
      public function get component() : QueryMiniLayer
      {
         return super.viewComponent as QueryMiniLayer;
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            if(param1 is uint)
            {
               if(_loc2_)
               {
                  addr002d:
                  this._targetPlayfieldId = param1 as uint;
               }
            }
            return;
         }
         §§goto(addr002d);
      }
   }
}

