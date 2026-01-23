package net.bigpoint.cityrama.model.field.factorys
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructureVO;
   import net.bigpoint.cityrama.model.field.vo.DecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigSecurityGradeDTO;
   
   public class InfrastructureDecorationFieldObjectVo extends DecorationFieldObjectVo implements IEmergencyInfrastructureVO
   {
      
      private var _emergencyIsRunning:Boolean;
      
      public function InfrastructureDecorationFieldObjectVo(param1:ConfigPlayfieldItemDTO)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            super(param1);
         }
      }
      
      public function get listOfGrades() : Vector.<ConfigSecurityGradeDTO>
      {
         return configPlayfieldItemVo.configSecurityGrades;
      }
      
      public function get id() : Number
      {
         return decorationVo.id;
      }
      
      public function get objectSize() : Point
      {
         return new Point(configPlayfieldItemVo.sizeX,configPlayfieldItemVo.sizeY);
      }
      
      public function get department() : Vector.<String>
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:ConfigSecurityGradeDTO = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for each(_loc2_ in configPlayfieldItemVo.configSecurityGrades)
         {
            if(_loc5_)
            {
               if(_loc1_.indexOf(_loc2_.type) == -1)
               {
                  if(!_loc6_)
                  {
                     _loc1_.push(_loc2_.type);
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function get listOfModifiedGrades() : Vector.<ConfigSecurityGradeDTO>
      {
         return this.listOfGrades;
      }
      
      override public function interactionBlockedByEmergency() : Boolean
      {
         return this._emergencyIsRunning;
      }
      
      public function set emergencyIsRunning(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._emergencyIsRunning = param1;
         }
      }
   }
}

