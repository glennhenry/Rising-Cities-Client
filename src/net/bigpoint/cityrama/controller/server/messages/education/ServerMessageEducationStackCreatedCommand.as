package net.bigpoint.cityrama.controller.server.messages.education
{
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.EducationPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.AcademyFieldObject;
   import net.bigpoint.cityrama.view.schoolBook.SchoolBookMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageEducationStackCreatedCommand extends SimpleCommand
   {
      
      public function ServerMessageEducationStackCreatedCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc6_:AcademyFieldObject = null;
         var _loc7_:SchoolBookMediator = null;
         var _loc8_:ConfigPhaseDTO = null;
         var _loc9_:ConfigPhaseDTO = null;
         var _loc10_:Vector.<PhaseDTO> = null;
         var _loc11_:PhaseDTO = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:Number = Number(_loc2_.json.pfi);
         var _loc4_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc5_:Vector.<AcademyFieldObject> = _loc4_.getAcademyList();
         for each(_loc6_ in _loc5_)
         {
            if(_loc6_.academyFieldObjectVo.buildingDTO.id == _loc3_)
            {
               for each(_loc9_ in _loc6_.academyFieldObjectVo.configPlayfieldItemVo.activePhases)
               {
                  if(_loc2_.json.edu.pid == _loc9_.phaseId)
                  {
                     _loc8_ = _loc9_;
                  }
               }
               _loc10_ = new Vector.<PhaseDTO>(0);
               for each(_loc11_ in _loc6_.academyFieldObjectVo.buildingDTO.activePhases)
               {
                  if(_loc11_.config.phaseType != ServerPhaseTypes.EDUCATION)
                  {
                     _loc10_.push(_loc11_);
                  }
               }
               _loc10_.push(new EducationPhaseDTO(_loc2_.json.edu,_loc8_));
               _loc6_.academyFieldObjectVo.buildingDTO.activePhases = _loc10_;
               _loc6_.invalidateIconStateManager();
            }
         }
         _loc7_ = facade.retrieveMediator(SchoolBookMediator.NAME) as SchoolBookMediator;
         if(_loc7_)
         {
            _loc7_.setData(_loc6_);
         }
      }
   }
}

