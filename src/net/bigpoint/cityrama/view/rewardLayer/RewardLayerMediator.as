package net.bigpoint.cityrama.view.rewardLayer
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.model.detailViews.vo.DropInfoVo;
   import net.bigpoint.cityrama.model.dropIcons.vo.DropIconVO;
   import net.bigpoint.cityrama.model.rewards.vo.RewardDataVo;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.rewardLayer.ui.RewardLayerPopup;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class RewardLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "RewardLayerMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc1_))
      {
         NAME = "RewardLayerMediator";
      }
      
      private var _soundProxy:SoundProxy;
      
      private var _rewardData:RewardDataVo;
      
      public function RewardLayerMediator(param1:String, param2:RewardLayerPopup)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super(param1,param2);
            if(!(_loc4_ && Boolean(param2)))
            {
               this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
               if(_loc3_ || Boolean(this))
               {
                  addr0064:
                  §§push(this.component);
                  if(_loc3_)
                  {
                     §§pop().addEventListener(Event.CLOSE,this.handleClose);
                     if(!_loc4_)
                     {
                        addr0081:
                        this.component.okButton.addEventListener(MouseEvent.CLICK,this.handleOnAcceptClick);
                        addr007e:
                     }
                     §§goto(addr0091);
                  }
                  §§goto(addr0081);
               }
               §§goto(addr007e);
            }
            §§goto(addr0064);
         }
         addr0091:
      }
      
      private function handleOnAcceptClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc4_:DropIconVO = null;
         var _loc5_:DropInfoVo = null;
         if(!_loc9_)
         {
            this._soundProxy.playButtonClick();
            if(_loc8_)
            {
               this.component.okButton.enabled = false;
            }
         }
         var _loc2_:Point = new Point(this.component.width / 2,this.component.height / 2);
         _loc2_ = this.component.localToGlobal(_loc2_);
         var _loc3_:* = 0;
         if(!(_loc9_ && Boolean(_loc3_)))
         {
            §§push(this._rewardData);
            if(_loc8_ || Boolean(_loc2_))
            {
               if(§§pop().drops)
               {
                  if(!(_loc9_ && Boolean(_loc3_)))
                  {
                     addr00a0:
                     addr009c:
                     if(this._rewardData.drops.length > 0)
                     {
                        §§goto(addr00ab);
                     }
                     §§goto(addr01a3);
                  }
                  addr00ab:
                  for each(_loc5_ in this._rewardData.drops)
                  {
                     if(_loc5_.type == ServerOutputConstants.GOOD)
                     {
                        _loc4_ = new DropIconVO(_loc5_.gfxId.toString(),_loc2_);
                        if(_loc8_ || Boolean(_loc3_))
                        {
                           TweenMax.delayedCall(_loc3_,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,_loc4_]);
                           if(!_loc9_)
                           {
                              §§push(_loc3_);
                              if(!_loc9_)
                              {
                                 §§push(§§pop() + 0.1);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop());
                                 }
                              }
                              _loc3_ = §§pop();
                           }
                        }
                        continue;
                     }
                     _loc4_ = new DropIconVO(_loc5_.type,_loc2_);
                     if(!(_loc9_ && Boolean(_loc2_)))
                     {
                        TweenMax.delayedCall(_loc3_,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,_loc4_]);
                        if(!_loc8_)
                        {
                           continue;
                        }
                     }
                     §§push(_loc3_);
                     if(!_loc9_)
                     {
                        §§push(§§pop() + 0.1);
                        if(!_loc9_)
                        {
                           addr0190:
                           §§push(§§pop());
                        }
                        _loc3_ = §§pop();
                        continue;
                     }
                     §§goto(addr0190);
                  }
                  if(_loc8_)
                  {
                     addr01a3:
                     TweenMax.delayedCall(_loc3_,this.handleClose,[null]);
                  }
                  return;
               }
               §§goto(addr01a3);
            }
            §§goto(addr00a0);
         }
         §§goto(addr009c);
      }
      
      private function handleClose(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this.component);
            if(!(_loc3_ && _loc2_))
            {
               §§pop().removeEventListener(Event.CLOSE,this.handleClose);
               if(_loc2_)
               {
                  addr0038:
                  §§push(this.component);
                  if(_loc2_ || _loc3_)
                  {
                     §§pop().okButton.removeEventListener(MouseEvent.CLICK,this.handleClose);
                     if(!(_loc3_ && _loc3_))
                     {
                        facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
                        if(!_loc3_)
                        {
                           addr0082:
                           §§push(this.component);
                           if(_loc2_)
                           {
                              addr0094:
                              §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
                              if(_loc2_ || _loc2_)
                              {
                                 §§pop().removeEventListener(§§pop(),this.component_SHOW_UI_INFOLAYERHandler);
                                 if(!_loc3_)
                                 {
                                    addr00bd:
                                    this.component.removeEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
                                    addr00b7:
                                    addr00b4:
                                 }
                                 §§goto(addr00c5);
                              }
                              §§goto(addr00bd);
                           }
                           §§goto(addr00b7);
                        }
                        addr00c5:
                        return;
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr00b7);
               }
               §§goto(addr00b4);
            }
            §§goto(addr0094);
         }
         §§goto(addr0038);
      }
      
      public function get component() : RewardLayerPopup
      {
         return super.viewComponent as RewardLayerPopup;
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            if(param1 is RewardDataVo)
            {
               if(_loc3_)
               {
                  addr003a:
                  this._rewardData = param1 as RewardDataVo;
                  if(!(_loc2_ && _loc2_))
                  {
                     this.component.data = this._rewardData;
                  }
               }
            }
            return;
         }
         §§goto(addr003a);
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this));
            if(_loc2_)
            {
               §§push(this.component);
               if(_loc2_)
               {
                  §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
                  if(!_loc1_)
                  {
                     §§pop().addEventListener(§§pop(),this.component_SHOW_UI_INFOLAYERHandler);
                     if(_loc2_)
                     {
                        addr0082:
                        this.component.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
                        addr007c:
                        addr0079:
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr0082);
               }
               §§goto(addr007c);
            }
            addr008a:
            return;
         }
         §§goto(addr0079);
      }
      
      private function component_SHOW_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §§push(param1.cid);
         if(_loc5_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         if(!_loc4_)
         {
            _loc3_.x += param1.target.width / 2;
            if(_loc5_)
            {
               sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
                  "cid":_loc2_,
                  "lineId":0,
                  "pt":_loc3_,
                  "type":param1.callerType
               },NAME);
            }
         }
      }
      
      private function component_ITEM_OVERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
         }
      }
      
      override public function getMediatorName() : String
      {
         return super.mediatorName;
      }
   }
}

