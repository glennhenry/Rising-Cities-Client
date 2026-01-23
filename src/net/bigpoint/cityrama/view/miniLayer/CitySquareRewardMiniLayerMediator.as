package net.bigpoint.cityrama.view.miniLayer
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.detailViews.vo.CitySquareDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.DropInfoVo;
   import net.bigpoint.cityrama.model.dropIcons.vo.DropIconVO;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.CitySquareRewardMiniLayer;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class CitySquareRewardMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "CitySquareRewardMiniLayerMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "CitySquareRewardMiniLayerMediator";
      }
      
      private var _soundProxy:SoundProxy;
      
      public function CitySquareRewardMiniLayerMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param2))
         {
            super(param1,param2);
            if(!(_loc4_ && Boolean(param1)))
            {
               addr0041:
               §§push(this.component);
               if(!(_loc4_ && Boolean(param1)))
               {
                  §§pop().addEventListener(Event.CLOSE,this.handleClose);
                  if(_loc3_)
                  {
                     addr0071:
                     this.component.okButton.addEventListener(MouseEvent.CLICK,this.handleOkClicked);
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0071);
            }
            addr0081:
            return;
         }
         §§goto(addr0041);
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.onRemove();
            if(!_loc2_)
            {
               §§push(this.component);
               if(!_loc2_)
               {
                  §§pop().removeEventListener(Event.CLOSE,this.handleClose);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§push(this.component);
                     if(!_loc2_)
                     {
                        §§pop().okButton.removeEventListener(MouseEvent.CLICK,this.handleClose);
                        if(!(_loc2_ && _loc2_))
                        {
                           addr006e:
                           §§push(this.component);
                           if(!_loc2_)
                           {
                              addr0076:
                              §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
                              if(!_loc2_)
                              {
                                 §§pop().removeEventListener(§§pop(),this.component_SHOW_UI_INFOLAYERHandler);
                                 if(_loc1_ || _loc2_)
                                 {
                                    addr00a9:
                                    this.component.removeEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
                                    addr00a3:
                                    addr0096:
                                    if(_loc1_)
                                    {
                                       if(!isNaN(this.component.currentChallengeId))
                                       {
                                          if(_loc1_)
                                          {
                                             addr00cb:
                                             sendNotification(ApplicationNotificationConstants.QUEST_CHALLENGE_COLLECTREWARD,this.component.currentChallengeId);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr00dc);
                              }
                              §§goto(addr00a9);
                           }
                           §§goto(addr00a3);
                        }
                        addr00dc:
                        return;
                     }
                     §§goto(addr00a3);
                  }
                  §§goto(addr00cb);
               }
               §§goto(addr0076);
            }
            §§goto(addr0096);
         }
         §§goto(addr006e);
      }
      
      private function handleOkClicked(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._soundProxy.playButtonClick();
            if(!_loc3_)
            {
               addr0023:
               this.triggerDrop();
            }
            return;
         }
         §§goto(addr0023);
      }
      
      private function handleClose(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
         }
      }
      
      private function triggerDrop() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc4_:DropIconVO = null;
         var _loc5_:DropInfoVo = null;
         var _loc1_:Vector.<DropInfoVo> = this.component.drops;
         var _loc2_:Point = new Point(this.component.width / 2,this.component.height / 2);
         _loc2_ = this.component.localToGlobal(_loc2_);
         var _loc3_:* = 0;
         if(_loc8_ || Boolean(_loc2_))
         {
            §§push(Boolean(_loc1_));
            if(_loc8_ || Boolean(this))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(_temp_3)
               {
                  if(!_loc9_)
                  {
                     §§pop();
                     if(_loc8_ || Boolean(_loc3_))
                     {
                        addr008f:
                        if(_loc1_.length > 0)
                        {
                           §§goto(addr0093);
                        }
                        §§goto(addr020d);
                     }
                     §§goto(addr0093);
                  }
               }
            }
            §§goto(addr008f);
         }
         addr0093:
         for each(_loc5_ in _loc1_)
         {
            §§push(_loc5_.type);
            if(_loc8_)
            {
               §§push(ServerOutputConstants.GOOD);
               if(_loc8_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc9_ && Boolean(_loc2_)))
                     {
                        _loc4_ = new DropIconVO(_loc5_.gfxId.toString(),_loc2_);
                        if(_loc8_ || Boolean(this))
                        {
                           TweenMax.delayedCall(_loc3_,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,_loc4_]);
                           if(!_loc9_)
                           {
                              §§push(_loc3_);
                              if(!(_loc9_ && Boolean(_loc2_)))
                              {
                                 §§push(§§pop() + 0.1);
                                 if(_loc8_)
                                 {
                                    §§push(§§pop());
                                 }
                              }
                              _loc3_ = §§pop();
                           }
                        }
                        continue;
                     }
                  }
                  else
                  {
                     addr0142:
                     addr013d:
                     if(_loc5_.type != ServerTagConstants.GOOD_KEY)
                     {
                        _loc4_ = new DropIconVO(_loc5_.type,_loc2_);
                        if(!_loc8_)
                        {
                           continue;
                        }
                        TweenMax.delayedCall(_loc3_,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,_loc4_]);
                        if(_loc9_ && Boolean(_loc1_))
                        {
                           continue;
                        }
                        §§push(_loc3_);
                        if(!_loc9_)
                        {
                           §§push(§§pop() + 0.1);
                           if(!_loc9_)
                           {
                              addr01f2:
                              §§push(§§pop());
                           }
                           _loc3_ = §§pop();
                           continue;
                        }
                        §§goto(addr01f2);
                     }
                  }
                  _loc4_ = new DropIconVO(_loc5_.type,_loc2_);
                  if(_loc8_)
                  {
                     TweenMax.delayedCall(_loc3_,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,_loc4_]);
                     if(_loc9_ && Boolean(_loc2_))
                     {
                        continue;
                     }
                  }
                  §§push(_loc3_);
                  if(_loc8_ || Boolean(_loc3_))
                  {
                     §§push(§§pop() + 0.1);
                     if(!_loc9_)
                     {
                        §§push(§§pop());
                     }
                  }
                  _loc3_ = §§pop();
                  continue;
               }
               §§goto(addr0142);
            }
            §§goto(addr013d);
         }
         if(!(_loc9_ && Boolean(this)))
         {
            addr020d:
            TweenMax.delayedCall(_loc3_,this.handleClose);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            §§push(this.component);
            if(_loc1_)
            {
               §§push(true);
               if(_loc1_ || _loc2_)
               {
                  §§pop().successState = §§pop();
                  if(_loc1_ || _loc1_)
                  {
                     §§push(this.component);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§goto(addr0054);
                     }
                     §§goto(addr00c6);
                  }
                  §§goto(addr00e6);
               }
               addr0054:
               §§pop().upsellState = false;
               §§goto(addr0053);
            }
            addr0053:
            if(_loc1_)
            {
               this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
               if(_loc1_ || Boolean(this))
               {
                  §§goto(addr0085);
               }
               §§goto(addr00b4);
            }
            addr0085:
            facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this));
            if(!_loc2_)
            {
               addr00b4:
               §§push(this.component);
               if(_loc1_)
               {
                  addr00c6:
                  §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
                  if(!(_loc2_ && _loc1_))
                  {
                     §§pop().addEventListener(§§pop(),this.component_SHOW_UI_INFOLAYERHandler);
                     if(!_loc2_)
                     {
                        addr00ef:
                        this.component.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
                        addr00e9:
                        addr00e6:
                     }
                     §§goto(addr00f6);
                  }
                  §§goto(addr00ef);
               }
               §§goto(addr00e9);
            }
            §§goto(addr00f6);
         }
         addr00f6:
      }
      
      override public function listNotificationInterests() : Array
      {
         return [];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         §§push(param1.getName());
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Object = param1.getBody();
         var _loc4_:* = _loc2_;
         switch(0)
         {
         }
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.component.data = param1 as CitySquareDetailViewVo;
         }
      }
      
      public function get component() : CitySquareRewardMiniLayer
      {
         return super.viewComponent as CitySquareRewardMiniLayer;
      }
      
      private function component_SHOW_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(param1.cid);
         if(_loc4_ || Boolean(this))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         if(!(_loc5_ && _loc2_))
         {
            _loc3_.x += param1.target.width / 2;
            if(_loc4_)
            {
               addr0075:
               sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
                  "cid":_loc2_,
                  "lineId":0,
                  "pt":_loc3_,
                  "type":param1.callerType
               },NAME);
            }
            return;
         }
         §§goto(addr0075);
      }
      
      private function component_ITEM_OVERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
         }
      }
   }
}

