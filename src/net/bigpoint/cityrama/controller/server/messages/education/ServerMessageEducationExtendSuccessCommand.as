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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
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
            §§push(_loc8_.academyFieldObjectVo);
            if(_loc12_)
            {
               §§push(§§pop().educationPhase);
               if(!_loc13_)
               {
                  if(§§pop().configPhaseId != _loc3_)
                  {
                     continue;
                  }
                  if(_loc13_ && Boolean(_loc2_))
                  {
                     continue;
                  }
                  §§push(_loc8_.academyFieldObjectVo);
                  if(_loc12_)
                  {
                     §§pop().buildingDTO.professionals[0].unspentSkillPoints = _loc5_;
                     if(_loc13_ && Boolean(_loc3_))
                     {
                        continue;
                     }
                     §§push(_loc8_.academyFieldObjectVo);
                  }
                  addr00e5:
                  §§push(§§pop().educationPhase);
               }
               §§pop().educationStep = _loc4_;
               continue;
            }
            §§goto(addr00e5);
         }
         _loc9_ = facade.retrieveMediator(SchoolBookMediator.NAME) as SchoolBookMediator;
         if(_loc9_)
         {
            if(!(_loc13_ && Boolean(param1)))
            {
               _loc9_.setData(_loc9_.academyObject);
            }
         }
      }
   }
}

