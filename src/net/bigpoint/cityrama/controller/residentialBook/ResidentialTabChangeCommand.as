package net.bigpoint.cityrama.controller.residentialBook
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.residentialBook.ResidentialTabProxy;
   import net.bigpoint.cityrama.view.residentialBook.ResidentialImprovementContentMediator;
   import net.bigpoint.cityrama.view.residentialBook.ResidentialOverviewContentMediator;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ResidentialPopup;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ResidentialTabChangeCommand extends SimpleCommand
   {
      
      public function ResidentialTabChangeCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ResidentialTabProxy = facade.retrieveProxy(ResidentialTabProxy.NAME) as ResidentialTabProxy;
         var _loc3_:ResidentialOverviewContentMediator = facade.retrieveMediator(ResidentialOverviewContentMediator.NAME) as ResidentialOverviewContentMediator;
         var _loc4_:ResidentialImprovementContentMediator = facade.retrieveMediator(ResidentialImprovementContentMediator.NAME) as ResidentialImprovementContentMediator;
         var _loc5_:ResidentialPopup = param1.getBody() as ResidentialPopup;
         if(_loc5_)
         {
            switch(_loc2_.currentIndex)
            {
               case ResidentialTabProxy.OVERVIEW_TAB_INDEX:
                  sendNotification(ApplicationNotificationConstants.DETACH_IMPROVEMENT_FROM_CURSOR);
                  if(!_loc3_)
                  {
                     _loc3_ = new ResidentialOverviewContentMediator(ResidentialOverviewContentMediator.NAME,_loc5_);
                     facade.registerMediator(_loc3_);
                  }
                  if(_loc4_)
                  {
                     facade.removeMediator(ResidentialImprovementContentMediator.NAME);
                  }
                  _loc3_.init();
                  break;
               case ResidentialTabProxy.HIP_TAB_INDEX:
                  if(!_loc4_)
                  {
                     _loc4_ = new ResidentialImprovementContentMediator(ResidentialImprovementContentMediator.NAME,_loc5_);
                     facade.registerMediator(_loc4_);
                  }
                  if(_loc3_)
                  {
                     facade.removeMediator(ResidentialOverviewContentMediator.NAME);
                  }
                  _loc4_.init(_loc2_.currentResidential);
            }
         }
      }
   }
}

