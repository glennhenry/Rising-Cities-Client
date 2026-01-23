package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   import net.bigpoint.cityrama.model.detailViews.vo.CitySquareDetailViewVo;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.CitySquareRewardMiniLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class CitySquareFailureMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "CitySquareFailureMiniLayerMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         NAME = "CitySquareFailureMiniLayerMediator";
      }
      
      private var _soundProxy:SoundProxy;
      
      public function CitySquareFailureMiniLayerMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || _loc3_)
         {
            super(param1,param2);
            if(!_loc3_)
            {
               addr0037:
               §§push(this.component);
               if(!(_loc3_ && Boolean(param1)))
               {
                  §§pop().addEventListener(Event.CLOSE,this.handleClose);
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr006e:
                     this.component.okButton.addEventListener(MouseEvent.CLICK,this.handleClose);
                     addr006b:
                  }
                  return;
               }
               §§goto(addr006e);
            }
            §§goto(addr006b);
         }
         §§goto(addr0037);
      }
      
      private function handleClose(param1:Event) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param1)))
         {
            this._soundProxy.playButtonClick();
         }
         var _loc2_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         if(!_loc4_)
         {
            facade.sendNotification(ApplicationNotificationConstants.QUEST_CHANGE_STATE,{
               "id":_loc2_.expiredEventQuest.quests[0].config.id,
               "state":QuestSystemStateConst.CANCELLED
            });
            if(!_loc4_)
            {
               §§push(this.component);
               if(!(_loc4_ && Boolean(this)))
               {
                  §§pop().removeEventListener(Event.CLOSE,this.handleClose);
                  if(_loc3_ || Boolean(this))
                  {
                     this.component.removeEventListener(MouseEvent.CLICK,this.handleClose);
                     addr00aa:
                     if(!(_loc4_ && Boolean(_loc2_)))
                     {
                        facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
                        if(_loc3_)
                        {
                           addr00e5:
                           sendNotification(ApplicationNotificationConstants.EVENTS_CHANGED);
                        }
                        return;
                     }
                  }
                  §§goto(addr00e5);
               }
               §§goto(addr00aa);
            }
         }
         §§goto(addr00e5);
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.component);
            if(_loc2_)
            {
               §§push(false);
               if(_loc2_)
               {
                  §§pop().successState = §§pop();
                  if(!_loc1_)
                  {
                     addr003a:
                     this.component.upsellState = false;
                     addr0039:
                     addr0036:
                     if(_loc2_)
                     {
                        this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
                     }
                  }
                  return;
               }
               §§goto(addr003a);
            }
            §§goto(addr0039);
         }
         §§goto(addr0036);
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super.onRemove();
         }
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
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

