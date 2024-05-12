using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DapperRepositories;
using DTOs.Response;
using MediatorCqrs.Commands;
using MediatR;

namespace MediatorCqrs.Handlers
{
    public class DeleteAppointmentHandler : IRequestHandler<DeleteAppointmentCommand, ActionAppointmentDTO>
    {
        private readonly IRepoH _repo;

        public DeleteAppointmentHandler(IRepoH repo)
        {
            _repo = repo;
        }
        public async Task<ActionAppointmentDTO> Handle(DeleteAppointmentCommand request, CancellationToken cancellationToken)
        {
            return await _repo.DeleteAppointmentAsync(request.deleteAppointmentDTO);
        }
    }
}
