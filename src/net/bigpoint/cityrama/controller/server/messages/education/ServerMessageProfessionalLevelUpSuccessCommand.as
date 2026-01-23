package net.bigpoint.cityrama.controller.server.messages.education
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.professionals.ProfessionalProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageProfessionalLevelUpSuccessCommand extends SimpleCommand
   {
      
      public function ServerMessageProfessionalLevelUpSuccessCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc2_:MessageVo = param1.getBody() as MessageVo;
         var _loc3_:Number = Number(_loc2_.json.prof);
         var _loc4_:Number = Number(_loc2_.json.spec);
         var _loc5_:uint = uint(_loc2_.json.usp);
         var _loc6_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc7_:ProfessionalProxy = facade.retrieveProxy(ProfessionalProxy.NAME) as ProfessionalProxy;
         var _loc8_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc9_:ProfessionalDTO = _loc7_.getProfessionalById(_loc3_);
         _loc9_.updateSpecialisation(_loc6_.config.professionalSpecializations[_loc4_]);
         if(_loc12_ || Boolean(param1))
         {
            _loc9_.unspentSkillPoints = _loc5_;
            if(_loc12_ || Boolean(this))
            {
               _loc9_.canLevelUp = false;
            }
         }
         var _loc10_:BillboardObject = _loc8_.getBillboardById(_loc9_.buildingId);
         _loc10_.invalidateIconStateManager();
         if(_loc12_)
         {
            facade.sendNotification(ApplicationNotificationConstants.PROFESSIONALS_CHANGED);
         }
      }
   }
}

