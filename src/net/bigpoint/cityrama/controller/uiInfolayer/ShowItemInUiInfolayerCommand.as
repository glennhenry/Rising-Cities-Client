package net.bigpoint.cityrama.controller.uiInfolayer
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerConfigElementCategory;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.DecorationVo;
   import net.bigpoint.cityrama.model.vo.BestsellerVo;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ShowItemInUiInfolayerCommand extends SimpleCommand
   {
      
      public function ShowItemInUiInfolayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:Number = Number(param1.getBody().cid);
         var _loc3_:Point = Point(param1.getBody().pt);
         var _loc4_:uint = uint(param1.getBody().lineId);
         var _loc5_:String = param1.getBody().type;
         var _loc6_:BuildingDTO = param1.getBody().bDTO;
         var _loc7_:DecorationVo = param1.getBody().dVo;
         switch(_loc5_)
         {
            case ServerTagConstants.GOOD_NORMAL + "Production":
               sendNotification(ApplicationNotificationConstants.SHOW_GOOD_IN_UI_INFOLAYER,{
                  "showLocked":true,
                  "cid":_loc2_,
                  "lineId":_loc4_,
                  "pt":_loc3_
               },param1.getType());
               break;
            case ServerConfigElementCategory.GOOD:
            case ServerTagConstants.GOOD_NORMAL:
            case RewardItemComponentVo.TYPE_SPECIAL_GOOD:
            case RewardItemComponentVo.TYPE_NORMAL_GOOD:
            case RewardItemComponentVo.TYPE_EVENT_GOOD:
            case UIInfolayerDispatcherEvent.CALLER_TYPE_GOOD:
               sendNotification(ApplicationNotificationConstants.SHOW_GOOD_IN_UI_INFOLAYER,{
                  "cid":_loc2_,
                  "lineId":_loc4_,
                  "pt":_loc3_
               },param1.getType());
               break;
            case RewardItemComponentVo.TYPE_RESOURCE:
            case ServerConfigElementCategory.RESOURCE:
               sendNotification(ApplicationNotificationConstants.SHOW_RESSOURCE_IN_UI_INFOLAYER,{
                  "cid":_loc2_,
                  "lineId":_loc4_,
                  "pt":_loc3_
               },param1.getType());
               break;
            case RewardItemComponentVo.TYPE_NORMAL_PERMISSION:
            case RewardItemComponentVo.TYPE_SPECIAL_PERMISSION:
            case ServerConfigElementCategory.PLAYFIELD_ITEM_PERMISSION:
               sendNotification(ApplicationNotificationConstants.SHOW_PLAYFIELDITEM_IN_UI_INFOLAYER,{
                  "cid":_loc2_,
                  "lineId":_loc4_,
                  "pt":_loc3_,
                  "isReward":true,
                  "bDTO":_loc6_,
                  "dVo":_loc7_
               },param1.getType());
               break;
            case UIInfolayerDispatcherEvent.CALLER_TYPE_PFI:
               sendNotification(ApplicationNotificationConstants.SHOW_PLAYFIELDITEM_IN_UI_INFOLAYER,{
                  "cid":_loc2_,
                  "lineId":_loc4_,
                  "pt":_loc3_,
                  "isReward":false
               },param1.getType());
               break;
            case RewardItemComponentVo.TYPE_IMPROVEMENT:
            case ServerConfigElementCategory.PLAYFIELD_ITEM_IMPROVEMENT:
               sendNotification(ApplicationNotificationConstants.SHOW_IMPROVEMENT_IN_UI_INFOLAYER,{
                  "cid":_loc2_,
                  "lineId":_loc4_,
                  "pt":_loc3_
               },param1.getType());
               break;
            case BestsellerVo.GUI_INFOLAYER_STARTER:
            case BestsellerVo.GUI_INFOLAYER_PROD_STARTER:
            case BestsellerVo.GUI_INFOLAYER_EDU_STARTER:
            case BestsellerVo.GUI_INFOLAYER_EMERG_STARTER:
            case BestsellerVo.GUI_INFOLAYER_BUYRC:
            case BestsellerVo.GUI_INFOLAYER_CFA:
            case BestsellerVo.GUI_INFOLAYER_SOON:
               sendNotification(ApplicationNotificationConstants.SHOW_TREASAURY_ITEM_IN_UI_INFOLAYER,{
                  "type":_loc5_,
                  "lineId":_loc4_,
                  "pt":_loc3_
               },param1.getType());
               break;
            case UIInfolayerDispatcherEvent.CALLER_TYPE_IMPROVEMENT_BOOSTER:
            case UIInfolayerDispatcherEvent.CALLER_TYPE_BOOSTER:
               sendNotification(ApplicationNotificationConstants.SHOW_BOOSTER_PACK_IN_UI_INFOLAYER,{
                  "type":_loc5_,
                  "cid":_loc2_,
                  "lineId":_loc4_,
                  "pt":_loc3_
               },param1.getType());
               break;
            case RewardItemComponentVo.TYPE_ASSIST:
            case ServerOutputConstants.ASSIST:
               sendNotification(ApplicationNotificationConstants.SHOW_ASSISTANT_IN_UI_INFOLAYER,{
                  "cid":_loc2_,
                  "lineId":_loc4_,
                  "pt":_loc3_
               },param1.getType());
         }
      }
   }
}

