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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
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
            if(_loc6_.academyFieldObjectVo.buildingDTO.id != _loc3_)
            {
               continue;
            }
            if(_loc16_ || Boolean(this))
            {
               var _loc14_:int = 0;
               if(_loc16_)
               {
                  for each(_loc9_ in _loc6_.academyFieldObjectVo.configPlayfieldItemVo.activePhases)
                  {
                     if(_loc16_ || Boolean(_loc3_))
                     {
                        if(_loc2_.json.edu.pid != _loc9_.phaseId)
                        {
                           continue;
                        }
                     }
                     _loc8_ = _loc9_;
                  }
               }
            }
            _loc10_ = new Vector.<PhaseDTO>(0);
            if(_loc16_)
            {
               _loc14_ = 0;
               if(_loc16_ || Boolean(_loc2_))
               {
                  for each(_loc11_ in _loc6_.academyFieldObjectVo.buildingDTO.activePhases)
                  {
                     if(_loc11_.config.phaseType != ServerPhaseTypes.EDUCATION)
                     {
                        if(!_loc17_)
                        {
                           _loc10_.push(_loc11_);
                        }
                     }
                  }
               }
               if(_loc16_)
               {
                  _loc10_.push(new EducationPhaseDTO(_loc2_.json.edu,_loc8_));
                  if(_loc16_)
                  {
                     addr0199:
                     _loc6_.academyFieldObjectVo.buildingDTO.activePhases = _loc10_;
                     if(!(_loc16_ || Boolean(_loc3_)))
                     {
                        continue;
                     }
                  }
                  addr01c0:
                  _loc6_.invalidateIconStateManager();
                  continue;
               }
               §§goto(addr0199);
            }
            §§goto(addr01c0);
         }
         _loc7_ = facade.retrieveMediator(SchoolBookMediator.NAME) as SchoolBookMediator;
         if(_loc7_)
         {
            if(_loc16_)
            {
               _loc7_.setData(_loc6_);
            }
         }
      }
   }
}

