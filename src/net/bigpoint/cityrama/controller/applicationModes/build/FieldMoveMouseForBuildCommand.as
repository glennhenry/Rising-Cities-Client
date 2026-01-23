package net.bigpoint.cityrama.controller.applicationModes.build
{
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.FieldBuildProxy;
   import net.bigpoint.cityrama.model.streetBuilding.StreetBuildProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class FieldMoveMouseForBuildCommand extends SimpleCommand
   {
      
      public function FieldMoveMouseForBuildCommand()
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
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1502
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      private function setTo(param1:StreetBuildProxy, param2:FieldBuildProxy, param3:Number, param4:Number, param5:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         if(_loc7_ || Boolean(param2))
         {
            §§push(param1.isStartSet);
            if(!_loc6_)
            {
               if(§§pop())
               {
                  if(!(_loc6_ && Boolean(param2)))
                  {
                     addr0043:
                     if(param5)
                     {
                        if(!(_loc6_ && Boolean(param1)))
                        {
                           param1.setTo(new Cuboid(param3,param4,1,1,1,1));
                           if(_loc7_ || Boolean(this))
                           {
                              addr00a9:
                              if(param1.getNumStreetsToBuild() > 0)
                              {
                                 if(_loc7_ || Boolean(param2))
                                 {
                                    addr00c3:
                                    §§push(param2.planeObjectToAdd);
                                    if(_loc7_)
                                    {
                                       §§pop().presentation.visible = false;
                                       if(!_loc6_)
                                       {
                                          addr00d9:
                                          §§push(param2.planeObjectToAdd);
                                          if(_loc7_ || Boolean(param3))
                                          {
                                             §§pop().container.visible = false;
                                             addr00eb:
                                             if(_loc6_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr0119:
                                             §§pop().presentation.visible = true;
                                             if(_loc7_)
                                             {
                                                addr0129:
                                                param2.planeObjectToAdd.container.visible = true;
                                             }
                                          }
                                       }
                                       §§goto(addr012f);
                                    }
                                    §§goto(addr00eb);
                                 }
                                 §§goto(addr00d9);
                              }
                              else
                              {
                                 §§push(param2.planeObjectToAdd);
                                 if(!(_loc6_ && Boolean(param3)))
                                 {
                                    §§goto(addr0119);
                                 }
                              }
                              §§goto(addr0129);
                           }
                           §§goto(addr012f);
                        }
                        else
                        {
                           addr0095:
                           param1.setTo(null);
                           if(!(_loc6_ && Boolean(param1)))
                           {
                              §§goto(addr00a9);
                           }
                        }
                        §§goto(addr00c3);
                     }
                     else
                     {
                        param1.clearTemporary();
                        if(!_loc6_)
                        {
                           §§goto(addr0095);
                        }
                     }
                  }
               }
               addr012f:
               return;
            }
            §§goto(addr0043);
         }
         §§goto(addr00a9);
      }
   }
}

