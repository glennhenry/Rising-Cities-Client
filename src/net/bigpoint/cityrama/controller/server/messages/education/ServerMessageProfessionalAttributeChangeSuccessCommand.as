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
         var _temp_1:* = true;
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = _temp_1;
         var _loc9_:AcademyFieldObject = null;
         var _loc10_:SchoolBookMediator = null;
         var _loc11_:Vector.<ProfessionalAttributeDTO> = null;
         var _loc12_:ProfessionalAttributeDTO = null;
         var _loc13_:ProfessionalAttributeDTO = null;
         var _loc14_:ConfigProfessionalAttributeDTO = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:ProfessionalAttributeDTO = new ProfessionalAttributeDTO(_loc2_.json.att);
         §§push(_loc3_.professionalID);
         if(!_loc23_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:Number = Number(_loc2_.json.usp);
         var _loc6_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc7_:Vector.<AcademyFieldObject> = _loc6_.getAcademyList();
         var _loc8_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         for each(_loc9_ in _loc7_)
         {
            §§push(_loc9_.academyFieldObjectVo);
            if(_loc24_ || Boolean(param1))
            {
               if(§§pop().buildingDTO.professionals[0].id != _loc4_)
               {
                  continue;
               }
               if(!(_loc23_ && Boolean(_loc3_)))
               {
                  §§push(_loc9_.academyFieldObjectVo);
                  if(_loc24_)
                  {
                     addr00f1:
                     §§pop().buildingDTO.professionals[0].unspentSkillPoints = _loc5_;
                     addr0101:
                     §§push(_loc9_.academyFieldObjectVo);
                  }
                  _loc11_ = §§pop().buildingDTO.professionals[0].attributes;
                  for each(_loc12_ in _loc11_)
                  {
                     if(_loc12_.configId != _loc3_.configId)
                     {
                        continue;
                     }
                     if(!(_loc23_ && Boolean(_loc2_)))
                     {
                        §§push(_loc9_.academyFieldObjectVo);
                        if(_loc24_ || Boolean(this))
                        {
                           §§pop().buildingDTO.professionals[0].attributes.splice(_loc11_.indexOf(_loc12_),1);
                           if(_loc24_)
                           {
                              addr0192:
                              _loc9_.academyFieldObjectVo.buildingDTO.professionals[0].attributes.push(_loc3_);
                              if(!(_loc24_ || Boolean(this)))
                              {
                                 break;
                              }
                           }
                           addr01b2:
                           var _loc19_:int = 0;
                           if(!_loc23_)
                           {
                              for each(_loc13_ in _loc9_.academyFieldObjectVo.buildingDTO.professionals[0].attributes)
                              {
                                 if(!(_loc23_ && Boolean(param1)))
                                 {
                                    var _loc21_:int = 0;
                                    if(_loc24_ || Boolean(this))
                                    {
                                       for each(_loc14_ in _loc8_.config.professionalAttributes)
                                       {
                                          if(!_loc23_)
                                          {
                                             if(_loc13_.configId != _loc14_.id)
                                             {
                                                continue;
                                             }
                                             if(!_loc24_)
                                             {
                                                continue;
                                             }
                                          }
                                          _loc13_.config = _loc14_;
                                       }
                                    }
                                 }
                              }
                           }
                           break;
                        }
                        §§goto(addr0192);
                     }
                     §§goto(addr01b2);
                  }
                  continue;
               }
               §§goto(addr0101);
            }
            §§goto(addr00f1);
         }
         _loc10_ = facade.retrieveMediator(SchoolBookMediator.NAME) as SchoolBookMediator;
         if(_loc10_)
         {
            if(_loc24_ || Boolean(_loc3_))
            {
               _loc10_.setData(_loc10_.academyObject);
            }
         }
      }
   }
}

