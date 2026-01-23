package net.bigpoint.cityrama.view.userInterfaceInfoLayer
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.view.application.ApplicationMediator;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.AbstractUIInfolayerComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.AssistantUiInfolayerContent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.GoodUiInfolayerContent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.ImprovementUiInfolayerContent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.MasteryCallengeUiInfolayerComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.PlayfieldItemUiInfolayerContent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.SimpleTextUiInfolayerContent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.AbstractUIInfolayerContentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.AssistantUiInfolayerContentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.GoodUiInfolayerContentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.ImprovementUiInfolayerContentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.MasteryChallengeUiInfolayerComponentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.PlayfieldItemUiInfolayerContentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.SimpleTextUiInfolayerContentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.facade.Facade;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.components.Group;
   
   public class UserInterfaceInfoLayerMediator extends Mediator
   {
      
      public static const NAME:String = "UserInterfaceInfoLayerMediator";
      
      public static const LINE_AUTO_SELECT:uint = uint.MAX_VALUE;
      
      public static const DELAY_NONE:Number = 0;
      
      public static const DELAY_SMOOTH:Number = 0.5;
      
      private var _parentMediator:Mediator;
      
      private var _uiLineList:Vector.<UiInfolayerAlignmentLine>;
      
      private var _autoDestroy:Boolean;
      
      private var _delay:Number;
      
      public function UserInterfaceInfoLayerMediator(param1:Vector.<UiInfolayerAlignmentLine>, param2:Mediator, param3:Number = 0, param4:Boolean = true)
      {
         this._parentMediator = param2;
         this._uiLineList = param1;
         this._autoDestroy = param4;
         this._delay = param3;
         var _loc5_:ApplicationMediator = Facade.getInstance().retrieveMediator(ApplicationMediator.NAME) as ApplicationMediator;
         super(NAME + param2.getMediatorName(),_loc5_.component.mainView.uiInfolayerView);
      }
      
      private static function getBuiltViewByVO(param1:AbstractUIInfolayerContentVo) : AbstractUIInfolayerComponent
      {
         var _loc2_:AbstractUIInfolayerComponent = null;
         if(param1 is SimpleTextUiInfolayerContentVo)
         {
            _loc2_ = new SimpleTextUiInfolayerContent();
         }
         if(param1 is ImprovementUiInfolayerContentVo)
         {
            _loc2_ = new ImprovementUiInfolayerContent();
         }
         if(param1 is PlayfieldItemUiInfolayerContentVo)
         {
            _loc2_ = new PlayfieldItemUiInfolayerContent();
         }
         if(param1 is GoodUiInfolayerContentVo)
         {
            _loc2_ = new GoodUiInfolayerContent();
         }
         if(param1 is MasteryChallengeUiInfolayerComponentVo)
         {
            _loc2_ = new MasteryCallengeUiInfolayerComponent();
         }
         if(param1 is AssistantUiInfolayerContentVo)
         {
            _loc2_ = new AssistantUiInfolayerContent();
         }
         _loc2_.data = param1;
         return _loc2_;
      }
      
      override public function onRegister() : void
      {
         if(this._autoDestroy)
         {
            this._parentMediator.getViewComponent().addEventListener(Event.REMOVED_FROM_STAGE,this.parentMediatorViewComponentRemoved);
         }
      }
      
      private function parentMediatorViewComponentRemoved(param1:Event) : void
      {
         facade.removeMediator(getMediatorName());
      }
      
      override public function onRemove() : void
      {
         this._parentMediator.getViewComponent().removeEventListener(Event.REMOVED_FROM_STAGE,this.parentMediatorViewComponentRemoved);
         TweenMax.killDelayedCallsTo(this.showInfoLayer);
         this.component.removeAllElements();
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.SHOW_UI_INFOLAYER,ApplicationNotificationConstants.HIDE_UI_INFOLAYER];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:AbstractUIInfolayerContentVo = null;
         TweenMax.killDelayedCallsTo(this.showInfoLayer);
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.SHOW_UI_INFOLAYER:
               if(param1.getType() == null || this.getMediatorName().indexOf(param1.getType()) != -1)
               {
                  _loc2_ = param1.getBody() as AbstractUIInfolayerContentVo;
                  TweenMax.delayedCall(this._delay,this.showInfoLayer,[_loc2_]);
               }
               break;
            case ApplicationNotificationConstants.HIDE_UI_INFOLAYER:
               this.component.removeAllElements();
         }
      }
      
      private function showInfoLayer(param1:AbstractUIInfolayerContentVo) : void
      {
         if(param1 == null)
         {
            return;
         }
         this.validateLines();
         var _loc2_:AbstractUIInfolayerComponent = getBuiltViewByVO(param1);
         this.calculateAndUpdatePos(_loc2_,param1);
         this.component.addElement(_loc2_);
      }
      
      private function validateLines() : void
      {
         var _loc1_:UiInfolayerAlignmentLine = null;
         for each(_loc1_ in this._uiLineList)
         {
            _loc1_.validatePosition();
         }
      }
      
      private function calculateAndUpdatePos(param1:AbstractUIInfolayerComponent, param2:AbstractUIInfolayerContentVo) : void
      {
         var _loc3_:UserInterfaceInfoLayerAlignLineVo = this.selectLine(param2).lineVo;
         if(_loc3_ == null)
         {
            return;
         }
         if(_loc3_.layout == UserInterfaceInfoLayerAlignLineVo.LAYOUT_HORIZONTAL)
         {
            if(param2.pos.x > _loc3_.to.x)
            {
               param2.pos.x = _loc3_.to.x;
            }
            if(param2.pos.x < _loc3_.from.x)
            {
               param2.pos.x = _loc3_.from.x;
            }
            param1.left = param2.pos.x;
            param1.top = _loc3_.from.y;
            param2.alignment = _loc3_.alignment;
         }
      }
      
      private function selectLine(param1:AbstractUIInfolayerContentVo) : UiInfolayerAlignmentLine
      {
         var _loc2_:UiInfolayerAlignmentLine = null;
         var _loc3_:UiInfolayerAlignmentLine = null;
         for each(_loc3_ in this._uiLineList)
         {
            if(param1.lineId == _loc3_.lineVo.lineId)
            {
               return _loc3_;
            }
            if(param1.lineId == LINE_AUTO_SELECT)
            {
               if(_loc2_ == null)
               {
                  _loc2_ = _loc3_;
               }
               if(Point.distance(new Point(0,_loc3_.lineVo.from.y),new Point(0,param1.pos.y)) < Point.distance(new Point(0,_loc2_.lineVo.from.y),new Point(0,param1.pos.y)))
               {
                  _loc2_ = _loc3_;
               }
            }
         }
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         return null;
      }
      
      private function get component() : Group
      {
         return super.getViewComponent() as Group;
      }
   }
}

