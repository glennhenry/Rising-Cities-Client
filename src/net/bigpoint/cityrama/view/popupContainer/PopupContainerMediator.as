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
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         NAME = "PopupContainerMediator";
      }
      
      private var _modalCover:Group;
      
      private var _modalCoverTop:Group;
      
      private var _popupContainerTop:Group;
      
      private var _stackContainer:Group;
      
      private var _stackContainerTop:Group;
      
      public function PopupContainerMediator()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super(NAME,null);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:MainApplication = null;
         if(!_loc4_)
         {
            super.onRegister();
         }
         var _loc1_:ApplicationMediator = facade.retrieveMediator(ApplicationMediator.NAME) as ApplicationMediator;
         if(!_loc4_)
         {
            if(_loc1_)
            {
               addr0040:
               _loc2_ = _loc1_.getViewComponent() as MainApplication;
               if(!_loc4_)
               {
                  setViewComponent(_loc2_.mainView.popupContainer);
                  if(_loc3_ || Boolean(this))
                  {
                     this._stackContainer = _loc2_.mainView.popupStackContainer;
                     if(_loc3_)
                     {
                        this._modalCover = _loc2_.mainView.modalCover;
                        if(_loc3_)
                        {
                           this._modalCoverTop = _loc2_.mainView.modalCoverTop;
                           if(_loc3_)
                           {
                              addr00ba:
                              this._popupContainerTop = _loc2_.mainView.popupContainerTop;
                              if(!(_loc4_ && _loc3_))
                              {
                                 addr00d4:
                                 this._stackContainerTop = _loc2_.mainView.popupStackContainerTop;
                              }
                              §§goto(addr00df);
                           }
                           §§goto(addr00d4);
                        }
                        §§goto(addr00df);
                     }
                  }
               }
               §§goto(addr00ba);
            }
            addr00df:
            return;
         }
         §§goto(addr0040);
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
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1.getName();
         if(!(_loc4_ && _loc3_))
         {
            if(ApplicationNotificationConstants.SWITCH_MODAL_COVER === _loc2_)
            {
               addr006e:
               §§push(0);
               if(_loc4_)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  this.modalCover.visible = param1.getBody();
                  if(_loc4_ && Boolean(_loc2_))
                  {
                  }
            }
            return;
         }
         §§goto(addr006e);
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

