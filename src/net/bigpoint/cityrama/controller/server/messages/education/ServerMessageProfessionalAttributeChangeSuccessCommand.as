package net.bigpoint.cityrama.controller.server.messages.education
{
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalAttributeDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.AcademyFieldObject;
   import net.bigpoint.cityrama.view.schoolBook.SchoolBookMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageProfessionalAttributeChangeSuccessCommand extends SimpleCommand
   {
      
      public function ServerMessageProfessionalAttributeChangeSuccessCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc9_:AcademyFieldObject = null;
         var _loc10_:SchoolBookMediator = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:ProfessionalAttributeDTO = new ProfessionalAttributeDTO(_loc2_.json.att);
         var _loc4_:Number = _loc3_.professionalID;
         var _loc5_:Number = Number(_loc2_.json.usp);
         var _loc6_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc7_:Vector.<AcademyFieldObject> = _loc6_.getAcademyList();
         var _loc8_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         for each(_loc9_ in _loc7_)
         {
            if(_loc9_.academyFieldObjectVo.buildingDTO.professionals[0].id == _loc4_)
            {
               _loc9_.academyFieldObjectVo.buildingDTO.professionals[0].unspentSkillPoints = _loc5_;
               var _loc11_:Vector.<ProfessionalAttributeDTO> = _loc9_.academyFieldObjectVo.buildingDTO.professionals[0].attributes;
               for each(var _loc12_ in null)
               {
                  if(_loc12_.configId == _loc3_.configId)
                  {
                     _loc9_.academyFieldObjectVo.buildingDTO.professionals[0].attributes.splice(null.indexOf(null),1);
                     _loc9_.academyFieldObjectVo.buildingDTO.professionals[0].attributes.push(_loc3_);
                     for each(var _loc13_ in _loc9_.academyFieldObjectVo.buildingDTO.professionals[0].attributes)
                     {
                        for each(var _loc14_ in _loc8_.config.professionalAttributes)
                        {
                           if(null.configId == null.id)
                           {
                              null.config = null;
                           }
                        }
                     }
                     break;
                  }
               }
            }
         }
         _loc10_ = facade.retrieveMediator(SchoolBookMediator.NAME) as SchoolBookMediator;
         if(_loc10_)
         {
            _loc10_.setData(_loc10_.academyObject);
         }
      }
   }
}

