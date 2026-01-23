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
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class CitySquareUpsellMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "CitySquareUpsellMiniLayerMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc1_)
      {
         NAME = "CitySquareUpsellMiniLayerMediator";
      }
      
      private var _soundProxy:SoundProxy;
      
      public function CitySquareUpsellMiniLayerMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super(param1,param2);
            if(!_loc3_)
            {
               §§push(this.component);
               if(_loc4_ || Boolean(param2))
               {
                  §§pop().addEventListener(Event.CLOSE,this.handleClose);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0068:
                     this.component.okButton.addEventListener(MouseEvent.CLICK,this.handleOkClicked);
                     addr0065:
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0068);
            }
            addr0078:
            return;
         }
         §§goto(addr0065);
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super.onRemove();
            if(!_loc1_)
            {
               if(!isNaN(this.component.currentChallengeId))
               {
                  if(_loc2_ || Boolean(this))
                  {
                     sendNotification(ApplicationNotificationConstants.QUEST_CHALLENGE_COLLECTREWARD,this.component.currentChallengeId);
                  }
               }
            }
         }
      }
      
      private function handleOkClicked(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._soundProxy.playButtonClick();
            if(!(_loc2_ && _loc3_))
            {
               addr002e:
               this.triggerDrop();
            }
            return;
         }
         §§goto(addr002e);
      }
      
      private function handleClose(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            §§push(this.component);
            if(_loc3_ || Boolean(param1))
            {
               §§pop().removeEventListener(Event.CLOSE,this.handleClose);
               if(!_loc2_)
               {
                  §§goto(addr005d);
               }
               §§goto(addr0071);
            }
            addr005d:
            this.component.okButton.addEventListener(MouseEvent.CLICK,this.handleClose);
            if(_loc3_)
            {
               addr0071:
               facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
            }
            return;
         }
         §§goto(addr0071);
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
         if(!_loc9_)
         {
            §§push(Boolean(_loc1_));
            if(!_loc9_)
            {
               var _temp_1:* = §§pop();
               §§push(_temp_1);
               if(_temp_1)
               {
                  if(!(_loc9_ && Boolean(_loc3_)))
                  {
                     §§goto(addr0072);
                  }
               }
               §§goto(addr007f);
            }
            addr0072:
            §§pop();
            if(_loc8_)
            {
               addr007f:
               if(_loc1_.length > 0)
               {
                  §§goto(addr0083);
               }
               §§goto(addr0202);
            }
            §§goto(addr0083);
         }
         addr0083:
         for each(_loc5_ in _loc1_)
         {
            §§push(_loc5_.type);
            if(_loc8_)
            {
               §§push(ServerOutputConstants.GOOD);
               if(_loc8_ || Boolean(_loc2_))
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc8_ || Boolean(_loc3_))
                     {
                        _loc4_ = new DropIconVO(_loc5_.gfxId.toString(),_loc2_);
                        if(_loc9_)
                        {
                           continue;
                        }
                        TweenMax.delayedCall(_loc3_,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,_loc4_]);
                        if(!_loc8_)
                        {
                           continue;
                        }
                        §§push(_loc3_);
                        if(!(_loc9_ && Boolean(_loc3_)))
                        {
                           §§push(§§pop() + 0.1);
                           if(!_loc9_)
                           {
                              addr0126:
                              §§push(§§pop());
                           }
                           _loc3_ = §§pop();
                           continue;
                        }
                        §§goto(addr0126);
                     }
                  }
                  else
                  {
                     addr0135:
                     addr0130:
                     if(_loc5_.type != ServerTagConstants.GOOD_KEY)
                     {
                        _loc4_ = new DropIconVO(_loc5_.type,_loc2_);
                        if(!_loc9_)
                        {
                           TweenMax.delayedCall(_loc3_,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,_loc4_]);
                           if(_loc8_ || Boolean(this))
                           {
                              §§push(_loc3_);
                              if(!(_loc9_ && Boolean(_loc1_)))
                              {
                                 §§push(§§pop() + 0.1);
                                 if(_loc8_ || Boolean(_loc1_))
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
                  _loc4_ = new DropIconVO(_loc5_.type,_loc2_);
                  if(_loc8_)
                  {
                     TweenMax.delayedCall(_loc3_,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,_loc4_]);
                     if(_loc9_ && Boolean(_loc1_))
                     {
                        continue;
                     }
                  }
                  §§push(_loc3_);
                  if(_loc8_)
                  {
                     §§push(§§pop() + 0.1);
                     if(_loc8_)
                     {
                        §§push(§§pop());
                     }
                  }
                  _loc3_ = §§pop();
                  continue;
               }
               §§goto(addr0135);
            }
            §§goto(addr0130);
         }
         if(!_loc9_)
         {
            addr0202:
            TweenMax.delayedCall(_loc3_,this.handleClose);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.component);
            if(!(_loc2_ && _loc1_))
            {
               §§push(true);
               if(!_loc2_)
               {
                  §§pop().successState = §§pop();
                  if(_loc1_)
                  {
                     §§goto(addr0041);
                  }
                  §§goto(addr0049);
               }
               addr0041:
               this.component.upsellState = true;
               §§goto(addr0040);
            }
            addr0040:
            if(_loc1_)
            {
               addr0049:
               this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
            }
            §§goto(addr005c);
         }
         addr005c:
      }
      
      override public function listNotificationInterests() : Array
      {
         return [];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         §§push(param1.getName());
         if(_loc6_)
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
   }
}

