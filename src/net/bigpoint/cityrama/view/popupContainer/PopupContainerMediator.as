package net.bigpoint.cityrama.view.popupContainer
{
   import net.bigpoint.cityrama.MainApplication;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.view.application.ApplicationMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.components.Group;
   
   public class PopupContainerMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "PopupContainerMediator";
      
      private var _modalCover:Group;
      
      private var _modalCoverTop:Group;
      
      private var _popupContainerTop:Group;
      
      private var _stackContainer:Group;
      
      private var _stackContainerTop:Group;
      
      public function PopupContainerMediator()
      {
         super(NAME,null);
      }
      
      override public function onRegister() : void
      {
         var _loc2_:MainApplication = null;
         super.onRegister();
         var _loc1_:ApplicationMediator = facade.retrieveMediator(ApplicationMediator.NAME) as ApplicationMediator;
         if(_loc1_)
         {
            _loc2_ = _loc1_.getViewComponent() as MainApplication;
            setViewComponent(_loc2_.mainView.popupContainer);
            this._stackContainer = _loc2_.mainView.popupStackContainer;
            this._modalCover = _loc2_.mainView.modalCover;
            this._modalCoverTop = _loc2_.mainView.modalCoverTop;
            this._popupContainerTop = _loc2_.mainView.popupContainerTop;
            this._stackContainerTop = _loc2_.mainView.popupStackContainerTop;
         }
      }
      
      override public function getMediatorName() : String
      {
         return NAME;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.SWITCH_MODAL_COVER];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.SWITCH_MODAL_COVER:
               this.modalCover.visible = param1.getBody();
         }
      }
      
      public function get popupContainer() : Group
      {
         return super.viewComponent as Group;
      }
      
      public function get modalCover() : Group
      {
         return this._modalCover;
      }
      
      public function get modalCoverTop() : Group
      {
         return this._modalCoverTop;
      }
      
      public function get stackContainer() : Group
      {
         return this._stackContainer;
      }
      
      public function get popupContainerTop() : Group
      {
         return this._popupContainerTop;
      }
      
      public function get stackContainerTop() : Group
      {
         return this._stackContainerTop;
      }
   }
}

