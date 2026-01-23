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
      
      private var _soundProxy:SoundProxy;
      
      public function CitySquareUpsellMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.okButton.addEventListener(MouseEvent.CLICK,this.handleOkClicked);
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         if(!isNaN(this.component.currentChallengeId))
         {
            sendNotification(ApplicationNotificationConstants.QUEST_CHALLENGE_COLLECTREWARD,this.component.currentChallengeId);
         }
      }
      
      private function handleOkClicked(param1:Event = null) : void
      {
         this._soundProxy.playButtonClick();
         this.triggerDrop();
      }
      
      private function handleClose(param1:Event = null) : void
      {
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
         this.component.okButton.addEventListener(MouseEvent.CLICK,this.handleClose);
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
      }
      
      private function triggerDrop() : void
      {
         var _loc4_:DropIconVO = null;
         var _loc5_:DropInfoVo = null;
         var _loc1_:Vector.<DropInfoVo> = this.component.drops;
         var _loc2_:Point = new Point(this.component.width / 2,this.component.height / 2);
         _loc2_ = this.component.localToGlobal(_loc2_);
         var _loc3_:Number = 0;
         if(Boolean(_loc1_) && _loc1_.length > 0)
         {
            for each(_loc5_ in _loc1_)
            {
               if(_loc5_.type == ServerOutputConstants.GOOD)
               {
                  _loc4_ = new DropIconVO(_loc5_.gfxId.toString(),_loc2_);
                  TweenMax.delayedCall(_loc3_,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,_loc4_]);
                  _loc3_ += 0.1;
               }
               else if(_loc5_.type == ServerTagConstants.GOOD_KEY)
               {
                  _loc4_ = new DropIconVO(_loc5_.type,_loc2_);
                  TweenMax.delayedCall(_loc3_,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,_loc4_]);
                  _loc3_ += 0.1;
               }
               else
               {
                  _loc4_ = new DropIconVO(_loc5_.type,_loc2_);
                  TweenMax.delayedCall(_loc3_,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,_loc4_]);
                  _loc3_ += 0.1;
               }
            }
         }
         TweenMax.delayedCall(_loc3_,this.handleClose);
      }
      
      override public function onRegister() : void
      {
         this.component.successState = true;
         this.component.upsellState = true;
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:String = param1.getName();
         var _loc3_:Object = param1.getBody();
         var _loc4_:* = _loc2_;
         switch(0)
         {
         }
      }
      
      public function setData(param1:Object) : void
      {
         this.component.data = param1 as CitySquareDetailViewVo;
      }
      
      public function get component() : CitySquareRewardMiniLayer
      {
         return super.viewComponent as CitySquareRewardMiniLayer;
      }
   }
}

