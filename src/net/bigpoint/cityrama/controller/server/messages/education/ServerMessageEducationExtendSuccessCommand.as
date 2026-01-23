package net.bigpoint.cityrama.controller.server.messages.education
{
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.AcademyFieldObject;
   import net.bigpoint.cityrama.view.schoolBook.SchoolBookMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageEducationExtendSuccessCommand extends SimpleCommand
   {
      
      public function ServerMessageEducationExtendSuccessCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc8_:AcademyFieldObject = null;
         var _loc9_:SchoolBookMediator = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:Number = Number(_loc2_.json.edi);
         var _loc4_:Number = Number(_loc2_.json.cnt);
         var _loc5_:Number = Number(_loc2_.json.usp);
         var _loc6_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc7_:Vector.<AcademyFieldObject> = _loc6_.getAcademyList();
         for each(_loc8_ in _loc7_)
         {
            if(_loc8_.academyFieldObjectVo.educationPhase.configPhaseId == _loc3_)
            {
               _loc8_.academyFieldObjectVo.buildingDTO.professionals[0].unspentSkillPoints = _loc5_;
               _loc8_.academyFieldObjectVo.educationPhase.educationStep = _loc4_;
            }
         }
         _loc9_ = facade.retrieveMediator(SchoolBookMediator.NAME) as SchoolBookMediator;
         if(_loc9_)
         {
            _loc9_.setData(_loc9_.academyObject);
         }
      }
   }
}

