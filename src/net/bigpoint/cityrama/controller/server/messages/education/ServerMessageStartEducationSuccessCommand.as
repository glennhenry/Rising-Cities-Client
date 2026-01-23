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
   
   public class ServerMessageStartEducationSuccessCommand extends SimpleCommand
   {
      
      public function ServerMessageStartEducationSuccessCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc16_:Boolean = true;
         var _loc17_:* = §§pop();
         var _loc6_:AcademyFieldObject = null;
         var _loc7_:Vector.<PhaseDTO> = null;
         var _loc8_:PhaseDTO = null;
         var _loc9_:SchoolBookMediator = null;
         var _loc10_:ConfigPhaseDTO = null;
         var _loc11_:ConfigPhaseDTO = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:Number = Number(_loc2_.json.eid);
         var _loc4_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc5_:Vector.<AcademyFieldObject> = _loc4_.getAcademyList();
         for each(_loc6_ in _loc5_)
         {
            if(_loc6_.academyFieldObjectVo.educationPhase.configPhaseId == _loc3_)
            {
               if(_loc16_ || Boolean(_loc2_))
               {
                  var _loc14_:int = 0;
                  if(!_loc17_)
                  {
                     for each(_loc10_ in _loc6_.academyFieldObjectVo.configPlayfieldItemVo.activePhases)
                     {
                        if(_loc10_.phaseId == _loc2_.json.edu.pid)
                        {
                           _loc11_ = _loc10_;
                        }
                     }
                  }
               }
            }
         }
         _loc7_ = new Vector.<PhaseDTO>(0);
         if(_loc16_ || Boolean(param1))
         {
            var _loc12_:int = 0;
            if(_loc16_ || Boolean(_loc2_))
            {
               for each(_loc8_ in _loc6_.academyFieldObjectVo.buildingDTO.activePhases)
               {
                  if(_loc8_.config.phaseType != ServerPhaseTypes.EDUCATION)
                  {
                     if(_loc16_ || Boolean(param1))
                     {
                        _loc7_.push(_loc8_);
                     }
                  }
               }
            }
            if(_loc16_)
            {
               §§goto(addr018c);
            }
            §§goto(addr01b0);
         }
         addr018c:
         _loc7_.push(new EducationPhaseDTO(_loc2_.json.edu,_loc11_));
         if(_loc16_ || Boolean(param1))
         {
            addr01b0:
            _loc6_.academyFieldObjectVo.buildingDTO.activePhases = _loc7_;
            if(_loc16_ || Boolean(this))
            {
               _loc6_.invalidateIconStateManager();
            }
         }
         _loc9_ = facade.retrieveMediator(SchoolBookMediator.NAME) as SchoolBookMediator;
         if(_loc9_)
         {
            if(_loc16_)
            {
               _loc9_.setData(_loc9_.academyObject);
            }
         }
      }
   }
}

