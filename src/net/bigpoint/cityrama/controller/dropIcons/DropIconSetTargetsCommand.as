package net.bigpoint.cityrama.controller.dropIcons
{
   import net.bigpoint.cityrama.constants.ServerAssistTypeConstants;
   import net.bigpoint.cityrama.constants.ServerImprovementConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.dropIcons.vo.DropIconVO;
   import net.bigpoint.cityrama.view.assistants.RentCollectorSideMenuMediator;
   import net.bigpoint.cityrama.view.dropIcons.DropIconsMediator;
   import net.bigpoint.cityrama.view.hud.HUDMediator;
   import net.bigpoint.cityrama.view.mainMenu.MainMenuMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class DropIconSetTargetsCommand extends SimpleCommand
   {
      
      public function DropIconSetTargetsCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:DropIconVO = param1.getBody() as DropIconVO;
         var _loc3_:DropIconsMediator = facade.retrieveMediator(DropIconsMediator.NAME) as DropIconsMediator;
         var _loc4_:HUDMediator = facade.retrieveMediator(HUDMediator.NAME) as HUDMediator;
         var _loc5_:MainMenuMediator = facade.retrieveMediator(MainMenuMediator.NAME) as MainMenuMediator;
         var _loc6_:RentCollectorSideMenuMediator = facade.retrieveMediator(RentCollectorSideMenuMediator.NAME) as RentCollectorSideMenuMediator;
         if(!_loc2_.destinationElement)
         {
            switch(_loc2_.type)
            {
               case ServerResConst.RESOURCE_VIRTUALCURRENCY:
                  _loc2_.destinationElement = _loc4_.vcElementSparkleSprite;
                  break;
               case ServerResConst.RESOURCE_REALCURRENCY:
                  _loc2_.destinationElement = _loc4_.rcElementSparkleSprite;
                  break;
               case ServerResConst.RESOURCE_PRODUCTIONPOINTS:
               case ServerResConst.RESOURCE_EDUCATIONPOINTS:
                  _loc2_.destinationElement = _loc4_.resourceElementSparkleSprite;
                  break;
               case ServerResConst.RESOURCE_EXPERIENCE:
                  _loc2_.destinationElement = _loc4_.xpElementSparkleSprite;
                  break;
               case ServerResConst.RESOURCE_RICHMEN:
               case ServerResConst.RESOURCE_WORKERS:
               case ServerResConst.RESOURCE_ACADEMICS:
                  _loc2_.destinationElement = _loc4_.residentElementSparkleSprite;
                  break;
               case ServerImprovementConstants.IMPROVEMENT:
                  _loc2_.destinationElement = _loc5_.inventoryElement;
                  break;
               case ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL:
                  _loc2_.destinationElement = _loc6_.rentCollectorSparkleSprite;
                  break;
               default:
                  _loc2_.destinationElement = _loc5_.inventoryElement;
            }
         }
         _loc3_.dropIcon(_loc2_,param1.getName());
      }
   }
}

